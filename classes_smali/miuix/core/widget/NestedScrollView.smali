.class public Lmiuix/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Lm0/t;
.implements Lm0/p;
.implements Lm0/a0;
.implements Lmiuix/core/view/NestedContentInsetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;,
        Lmiuix/core/widget/NestedScrollView$SavedState;,
        Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

.field public static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field public static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Lm0/r;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mHasReachEdgeBeforeFling:Z

.field private mInitPaddingTop:I

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Lm0/u;

.field private mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Lmiuix/overscroller/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 3
    invoke-direct {v0}, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    .line 6
    sput-object v0, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [I

    .line 11
    const/4 v1, 0x0

    .line 12
    const v2, 0x101017a

    .line 15
    aput v2, v0, v1

    .line 17
    sput-object v0, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 9
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 11
    iput-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    new-array v2, v2, [I

    .line 12
    iput-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 13
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initScrollView()V

    .line 14
    sget-object v2, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    new-instance p1, Lm0/u;

    invoke-direct {p1}, Lm0/u;-><init>()V

    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Lm0/u;

    .line 18
    new-instance p1, Lm0/r;

    invoke-direct {p1, p0}, Lm0/r;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    .line 19
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 20
    sget-object p1, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method

.method private abortAnimatedScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 3
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 10
    return-void
.end method

.method private canScroll()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2c

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v0

    .line 22
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 24
    add-int/2addr v0, v3

    .line 25
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 27
    add-int/2addr v0, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v3

    .line 36
    sub-int/2addr v2, v3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    if-le v0, v2, :cond_2c

    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2c
    return v1
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    sub-int/2addr p2, p1

    return p2

    :cond_b
    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_e

    .line 3
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {p0, v1, p1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 15
    :cond_e
    :goto_e
    return-void
.end method

.method private endDrag()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 4
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 10
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 12
    if-eqz v0, :cond_15

    .line 14
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 17
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 19
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    :cond_15
    return-void
.end method

.method private ensureGlows()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1e

    .line 8
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 10
    if-nez v0, :cond_23

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 18
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 23
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 25
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 34
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 36
    :cond_23
    :goto_23
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v2

    .line 13
    move v5, v4

    .line 14
    :goto_d
    if-ge v4, v1, :cond_53

    .line 16
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Landroid/view/View;

    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 25
    move-result v7

    .line 26
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 29
    move-result v8

    .line 30
    const/4 v9, 0x1

    .line 31
    if-ge p2, v8, :cond_50

    .line 33
    if-ge v7, p3, :cond_50

    .line 35
    if-ge p2, v7, :cond_28

    .line 37
    if-ge v8, p3, :cond_28

    .line 39
    move v10, v9

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v10, v2

    .line 42
    :goto_29
    if-nez v3, :cond_2e

    .line 44
    move-object v3, v6

    .line 45
    move v5, v10

    .line 46
    goto :goto_50

    .line 47
    :cond_2e
    if-eqz p1, :cond_36

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 52
    move-result v11

    .line 53
    if-lt v7, v11, :cond_3e

    .line 55
    :cond_36
    if-nez p1, :cond_40

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 60
    move-result v7

    .line 61
    if-le v8, v7, :cond_40

    .line 63
    :cond_3e
    move v7, v9

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v7, v2

    .line 66
    :goto_41
    if-eqz v5, :cond_48

    .line 68
    if-eqz v10, :cond_50

    .line 70
    if-eqz v7, :cond_50

    .line 72
    goto :goto_4f

    .line 73
    :cond_48
    if-eqz v10, :cond_4d

    .line 75
    move-object v3, v6

    .line 76
    move v5, v9

    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    if-eqz v7, :cond_50

    .line 80
    :goto_4f
    move-object v3, v6

    .line 81
    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    .line 83
    goto :goto_d

    .line 84
    :cond_53
    return-object v3
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 18
    return-object v0
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_35

    .line 8
    new-instance v0, Landroid/util/TypedValue;

    .line 10
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 20
    move-result-object v2

    .line 21
    const v3, 0x101004d

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2d

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "Expected theme to define listPreferredItemHeight."

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :cond_35
    :goto_35
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 56
    return v0
.end method

.method private inChild(II)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2a

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    move-result v3

    .line 20
    sub-int/2addr v3, v0

    .line 21
    if-lt p2, v3, :cond_2a

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 26
    move-result v3

    .line 27
    sub-int/2addr v3, v0

    .line 28
    if-ge p2, v3, :cond_2a

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 33
    move-result p2

    .line 34
    if-lt p1, p2, :cond_2a

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 39
    move-result p2

    .line 40
    if-ge p1, p2, :cond_2a

    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2a
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-nez v0, :cond_b

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 15
    :goto_e
    return-void
.end method

.method private initScrollView()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/overscroller/widget/OverScroller;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    const/high16 v0, 0x40000

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 36
    move-result v1

    .line 37
    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 42
    move-result v1

    .line 43
    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 51
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v1, v0}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 9
    move-result p1

    .line 10
    xor-int/lit8 p1, p1, 0x1

    .line 12
    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object p0

    .line 9
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 11
    if-eqz v1, :cond_15

    .line 13
    check-cast p0, Landroid/view/View;

    .line 15
    invoke-static {p0, p1}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 15
    add-int/2addr p1, p2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    move-result v0

    .line 20
    if-lt p1, v0, :cond_23

    .line 22
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 24
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 26
    sub-int/2addr p1, p2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 30
    move-result p2

    .line 31
    add-int/2addr p2, p3

    .line 32
    if-gt p1, p2, :cond_23

    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    :goto_24
    return p1
.end method

.method private onNestedScrollInternal(II[I)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 12
    move-result v1

    .line 13
    sub-int v4, v1, v0

    .line 15
    if-eqz p3, :cond_16

    .line 17
    const/4 v0, 0x1

    .line 18
    aget v1, p3, v0

    .line 20
    add-int/2addr v1, v4

    .line 21
    aput v1, p3, v0

    .line 23
    :cond_16
    sub-int v6, p1, v4

    .line 25
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, p2

    .line 31
    move-object v9, p3

    .line 32
    invoke-virtual/range {v2 .. v9}, Lm0/r;->dispatchNestedScroll(IIII[II[I)V

    .line 35
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 11
    if-ne v1, v2, :cond_25

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 31
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 33
    if-eqz p1, :cond_25

    .line 35
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 38
    :cond_25
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_8

    .line 4
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 12
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 18
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 20
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/16 v4, 0x21

    .line 14
    if-ne p1, v4, :cond_11

    .line 16
    move v4, v3

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v4, v2

    .line 19
    :goto_12
    invoke-direct {p0, v4, p2, p3}, Lmiuix/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    .line 22
    move-result-object v5

    .line 23
    if-nez v5, :cond_19

    .line 25
    move-object v5, p0

    .line 26
    :cond_19
    if-lt p2, v1, :cond_1e

    .line 28
    if-gt p3, v0, :cond_1e

    .line 30
    goto :goto_28

    .line 31
    :cond_1e
    if-eqz v4, :cond_22

    .line 33
    sub-int/2addr p2, v1

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    sub-int p2, p3, v0

    .line 37
    :goto_24
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 40
    move v2, v3

    .line 41
    :goto_28
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 44
    move-result-object p2

    .line 45
    if-eq v5, p2, :cond_31

    .line 47
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 50
    :cond_31
    return v2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_16

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    .line 23
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v1, v0

    .line 11
    :goto_a
    if-eqz v1, :cond_15

    .line 13
    if-eqz p2, :cond_12

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {p0, v0, p1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 22
    :cond_15
    :goto_15
    return v1
.end method

.method private smoothScrollBy(IIZ)V
    .registers 8

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_57

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v1

    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v2

    .line 10
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, v2

    .line 11
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/overscroller/widget/OverScroller;->startScroll(IIII)V

    .line 12
    invoke-direct {p0, p3}, Lmiuix/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_65

    .line 13
    :cond_57
    iget-object p3, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_62

    .line 14
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 15
    :cond_62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 16
    :goto_65
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 3
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 6
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 12
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 9
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(I)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_7

    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getMaxScrollAmount()I

    .line 19
    move-result v2

    .line 20
    if-eqz v1, :cond_36

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v3

    .line 26
    invoke-direct {p0, v1, v2, v3}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_36

    .line 32
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 37
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 42
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 47
    move-result v2

    .line 48
    invoke-direct {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 51
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 54
    goto :goto_7e

    .line 55
    :cond_36
    const/16 v1, 0x21

    .line 57
    const/4 v3, 0x0

    .line 58
    const/16 v4, 0x82

    .line 60
    if-ne p1, v1, :cond_48

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 65
    move-result v1

    .line 66
    if-ge v1, v2, :cond_48

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 71
    move-result v2

    .line 72
    goto :goto_74

    .line 73
    :cond_48
    if-ne p1, v4, :cond_74

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    move-result v1

    .line 79
    if-lez v1, :cond_74

    .line 81
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 94
    move-result v1

    .line 95
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 97
    add-int/2addr v1, v5

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 101
    move-result v5

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 105
    move-result v6

    .line 106
    add-int/2addr v6, v5

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 110
    move-result v5

    .line 111
    sub-int/2addr v6, v5

    .line 112
    sub-int/2addr v1, v6

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 116
    move-result v2

    .line 117
    :cond_74
    :goto_74
    if-nez v2, :cond_77

    .line 119
    return v3

    .line 120
    :cond_77
    if-ne p1, v4, :cond_7a

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    neg-int v2, v2

    .line 124
    :goto_7b
    invoke-direct {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 127
    :goto_7e
    if-eqz v0, :cond_9b

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_9b

    .line 135
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_9b

    .line 141
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 144
    move-result p1

    .line 145
    const/high16 v0, 0x20000

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 153
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 156
    :cond_9b
    const/4 p1, 0x1

    .line 157
    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeScroll()V
    .registers 17

    .line 1
    move-object/from16 v10, p0

    .line 3
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 5
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 14
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 17
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 19
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    .line 22
    move-result v0

    .line 23
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 25
    sub-int v6, v0, v1

    .line 27
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 29
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 31
    const/4 v11, 0x1

    .line 32
    const/4 v12, 0x0

    .line 33
    aput v12, v0, v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    const v2, 0x1020002

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    :goto_31
    if-eqz v0, :cond_59

    .line 52
    instance-of v2, v0, Lmiuix/core/view/NestedCurrentFling;

    .line 54
    if-eqz v2, :cond_4d

    .line 56
    move-object v2, v0

    .line 57
    check-cast v2, Lmiuix/core/view/NestedCurrentFling;

    .line 59
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 61
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    .line 64
    move-result v3

    .line 65
    iget-object v4, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 67
    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    .line 70
    move-result v4

    .line 71
    invoke-interface {v2, v3, v4}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4d

    .line 77
    goto :goto_59

    .line 78
    :cond_4d
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 80
    if-eqz v2, :cond_54

    .line 82
    if-ne v0, v1, :cond_54

    .line 84
    goto :goto_59

    .line 85
    :cond_54
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 88
    move-result-object v0

    .line 89
    goto :goto_31

    .line 90
    :cond_59
    :goto_59
    const/4 v1, 0x0

    .line 91
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x1

    .line 95
    move-object/from16 v0, p0

    .line 97
    move v2, v6

    .line 98
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 101
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 103
    aget v0, v0, v11

    .line 105
    sub-int v13, v6, v0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 110
    move-result v14

    .line 111
    if-eqz v13, :cond_9f

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 116
    move-result v15

    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 121
    move-result v3

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x0

    .line 126
    move-object/from16 v0, p0

    .line 128
    move v2, v13

    .line 129
    move v4, v15

    .line 130
    move v6, v14

    .line 131
    invoke-virtual/range {v0 .. v9}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 137
    move-result v0

    .line 138
    sub-int v2, v0, v15

    .line 140
    sub-int/2addr v13, v2

    .line 141
    iget-object v7, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 143
    aput v12, v7, v11

    .line 145
    const/4 v3, 0x0

    .line 146
    iget-object v5, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 148
    const/4 v6, 0x1

    .line 149
    move-object/from16 v0, p0

    .line 151
    move v4, v13

    .line 152
    invoke-virtual/range {v0 .. v7}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 155
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 157
    aget v0, v0, v11

    .line 159
    sub-int/2addr v13, v0

    .line 160
    :cond_9f
    if-eqz v13, :cond_df

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_ab

    .line 168
    if-ne v0, v11, :cond_ac

    .line 170
    if-lez v14, :cond_ac

    .line 172
    :cond_ab
    move v12, v11

    .line 173
    :cond_ac
    if-eqz v12, :cond_dc

    .line 175
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    .line 178
    if-gez v13, :cond_c8

    .line 180
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 182
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_dc

    .line 188
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 190
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 192
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    .line 195
    move-result v1

    .line 196
    float-to-int v1, v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 200
    goto :goto_dc

    .line 201
    :cond_c8
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 203
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_dc

    .line 209
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 211
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 213
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    .line 216
    move-result v1

    .line 217
    float-to-int v1, v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 221
    :cond_dc
    :goto_dc
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 224
    :cond_df
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 226
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_ed

    .line 232
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 234
    invoke-static/range {p0 .. p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 237
    goto :goto_10b

    .line 238
    :cond_ed
    invoke-virtual {v10, v11}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 241
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mHasReachEdgeBeforeFling:Z

    .line 243
    if-nez v0, :cond_10b

    .line 245
    const-string v0, "2.0"

    .line 247
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_106

    .line 253
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    .line 256
    move-result-object v0

    .line 257
    const/16 v1, 0xc9

    .line 259
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 262
    goto :goto_10b

    .line 263
    :cond_106
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 265
    invoke-static {v10, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 268
    :cond_10b
    :goto_10b
    return-void
.end method

.method public computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 16
    move-result v2

    .line 17
    add-int v3, v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 22
    move-result v4

    .line 23
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 25
    if-lez v5, :cond_1b

    .line 27
    add-int/2addr v2, v4

    .line 28
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 43
    move-result v8

    .line 44
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 46
    add-int/2addr v8, v9

    .line 47
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 49
    add-int/2addr v8, v9

    .line 50
    if-ge v7, v8, :cond_36

    .line 52
    sub-int v4, v3, v4

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v4, v3

    .line 56
    :goto_37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 58
    if-le v7, v4, :cond_5a

    .line 60
    iget v8, p1, Landroid/graphics/Rect;->top:I

    .line 62
    if-le v8, v2, :cond_5a

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 67
    move-result v7

    .line 68
    if-le v7, v0, :cond_49

    .line 70
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 72
    sub-int/2addr p1, v2

    .line 73
    goto :goto_4c

    .line 74
    :cond_49
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 76
    sub-int/2addr p1, v4

    .line 77
    :goto_4c
    add-int/2addr p1, v1

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 81
    move-result v0

    .line 82
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 84
    add-int/2addr v0, v1

    .line 85
    sub-int/2addr v0, v3

    .line 86
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result v1

    .line 90
    goto :goto_78

    .line 91
    :cond_5a
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 93
    if-ge v3, v2, :cond_78

    .line 95
    if-ge v7, v4, :cond_78

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 100
    move-result v3

    .line 101
    if-le v3, v0, :cond_6b

    .line 103
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 105
    sub-int/2addr v4, p1

    .line 106
    sub-int/2addr v1, v4

    .line 107
    goto :goto_6f

    .line 108
    :cond_6b
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 110
    sub-int/2addr v2, p1

    .line 111
    sub-int/2addr v1, v2

    .line 112
    :goto_6f
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 115
    move-result p1

    .line 116
    neg-int p1, p1

    .line 117
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 120
    move-result v1

    .line 121
    :cond_78
    :goto_78
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    if-nez v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 36
    move-result v2

    .line 37
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 39
    add-int/2addr v2, v3

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 43
    move-result v3

    .line 44
    sub-int v1, v2, v1

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 49
    move-result v0

    .line 50
    if-gez v3, :cond_35

    .line 52
    sub-int/2addr v2, v3

    .line 53
    goto :goto_39

    .line 54
    :cond_35
    if-le v3, v0, :cond_39

    .line 56
    sub-int/2addr v3, v0

    .line 57
    add-int/2addr v2, v3

    .line 58
    :cond_39
    :goto_39
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 17
    :goto_10
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm0/r;->dispatchNestedFling(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1, p2}, Lm0/r;->dispatchNestedPreFling(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 16

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lm0/r;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 3
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 2
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lm0/r;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 6
    if-eqz v0, :cond_d3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 14
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_6a

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v4

    .line 33
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result v5

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_3a

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 46
    move-result v6

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 50
    move-result v7

    .line 51
    add-int/2addr v7, v6

    .line 52
    sub-int/2addr v3, v7

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 56
    move-result v6

    .line 57
    add-int/2addr v6, v2

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v6, v2

    .line 60
    :goto_3b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_50

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 69
    move-result v7

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 73
    move-result v8

    .line 74
    add-int/2addr v8, v7

    .line 75
    sub-int/2addr v4, v8

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 79
    move-result v7

    .line 80
    add-int/2addr v5, v7

    .line 81
    :cond_50
    int-to-float v6, v6

    .line 82
    int-to-float v5, v5

    .line 83
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget-object v5, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 88
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 91
    iget-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 93
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_67

    .line 99
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 101
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 104
    :cond_67
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 107
    :cond_6a
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 109
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_d3

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    move-result v1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 122
    move-result v3

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 126
    move-result v4

    .line 127
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 130
    move-result v5

    .line 131
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 134
    move-result v0

    .line 135
    add-int/2addr v0, v4

    .line 136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_9c

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 145
    move-result v5

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 149
    move-result v6

    .line 150
    add-int/2addr v6, v5

    .line 151
    sub-int/2addr v3, v6

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 155
    move-result v5

    .line 156
    add-int/2addr v2, v5

    .line 157
    :cond_9c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_b1

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 166
    move-result v5

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 170
    move-result v6

    .line 171
    add-int/2addr v6, v5

    .line 172
    sub-int/2addr v4, v6

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 176
    move-result v5

    .line 177
    sub-int/2addr v0, v5

    .line 178
    :cond_b1
    sub-int/2addr v2, v3

    .line 179
    int-to-float v2, v2

    .line 180
    int-to-float v0, v0

    .line 181
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 184
    const/high16 v0, 0x43340000  # 180.0f

    .line 186
    int-to-float v2, v3

    .line 187
    const/4 v5, 0x0

    .line 188
    invoke-virtual {p1, v0, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 191
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 193
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 196
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_d0

    .line 204
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 206
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 209
    :cond_d0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    :cond_d3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->canScroll()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x82

    .line 13
    if-nez v0, :cond_36

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_35

    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq p1, v0, :cond_35

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    if-ne p1, p0, :cond_22

    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_35

    .line 45
    if-eq p1, p0, :cond_35

    .line 47
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_35

    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_35
    return v1

    .line 55
    :cond_36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_79

    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 64
    move-result v0

    .line 65
    const/16 v3, 0x13

    .line 67
    const/16 v4, 0x21

    .line 69
    if-eq v0, v3, :cond_6a

    .line 71
    const/16 v3, 0x14

    .line 73
    if-eq v0, v3, :cond_5a

    .line 75
    const/16 v3, 0x3e

    .line 77
    if-eq v0, v3, :cond_4f

    .line 79
    goto :goto_79

    .line 80
    :cond_4f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_56

    .line 86
    move v2, v4

    .line 87
    :cond_56
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->pageScroll(I)Z

    .line 90
    goto :goto_79

    .line 91
    :cond_5a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_65

    .line 97
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    .line 100
    move-result v1

    .line 101
    goto :goto_79

    .line 102
    :cond_65
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 105
    move-result v1

    .line 106
    goto :goto_79

    .line 107
    :cond_6a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_75

    .line 113
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    .line 116
    move-result v1

    .line 117
    goto :goto_79

    .line 118
    :cond_75
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 121
    move-result v1

    .line 122
    :cond_79
    :goto_79
    return v1
.end method

.method public fling(I)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2e

    .line 7
    const/4 v0, 0x1

    .line 8
    if-lez p1, :cond_b

    .line 10
    move v1, v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, -0x1

    .line 13
    :goto_c
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 16
    move-result v1

    .line 17
    xor-int/2addr v1, v0

    .line 18
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mHasReachEdgeBeforeFling:Z

    .line 20
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/high16 v9, -0x80000000

    .line 35
    const v10, 0x7fffffff

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    move v6, p1

    .line 41
    invoke-virtual/range {v2 .. v12}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 44
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    .line 47
    :cond_2e
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x82

    .line 5
    if-ne p1, v2, :cond_8

    .line 7
    move v2, v0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v2, v1

    .line 10
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 16
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 18
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 20
    if-eqz v2, :cond_3d

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_3d

    .line 28
    sub-int/2addr v1, v0

    .line 29
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 44
    move-result v0

    .line 45
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 47
    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v0

    .line 53
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 55
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 57
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 59
    sub-int/2addr v1, v3

    .line 60
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 62
    :cond_3d
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 64
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 66
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 68
    invoke-direct {p0, p1, v1, v0}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public getBottomFadingEdgeStrength()F
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 31
    move-result v4

    .line 32
    sub-int/2addr v3, v4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 36
    move-result v0

    .line 37
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 39
    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 43
    move-result v1

    .line 44
    sub-int/2addr v0, v1

    .line 45
    sub-int/2addr v0, v3

    .line 46
    if-ge v0, v2, :cond_33

    .line 48
    int-to-float v0, v0

    .line 49
    int-to-float v1, v2

    .line 50
    div-float/2addr v0, v1

    .line 51
    return v0

    .line 52
    :cond_33
    const/high16 v0, 0x3f800000  # 1.0f

    .line 54
    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f000000  # 0.5f

    .line 8
    mul-float/2addr v0, v1

    .line 9
    float-to-int v0, v0

    .line 10
    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Lm0/u;

    .line 3
    iget v1, v0, Lm0/u;->a:I

    .line 5
    iget v0, v0, Lm0/u;->b:I

    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getScrollRange()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2e

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v0

    .line 22
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 24
    add-int/2addr v0, v3

    .line 25
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 27
    add-int/2addr v0, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v3

    .line 36
    sub-int/2addr v2, v3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    sub-int/2addr v0, v2

    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 46
    move-result v1

    .line 47
    :cond_2e
    return v1
.end method

.method public getTopFadingEdgeStrength()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 16
    move-result v1

    .line 17
    if-ge v1, v0, :cond_16

    .line 19
    int-to-float v1, v1

    .line 20
    int-to-float v0, v0

    .line 21
    div-float/2addr v1, v0

    .line 22
    return v1

    .line 23
    :cond_16
    const/high16 v0, 0x3f800000  # 1.0f

    .line 25
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isFillViewport()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 3
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 3
    return v0
.end method

.method public measureChild(Landroid/view/View;II)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 19
    move-result p2

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    move-result p3

    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 28
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p4

    .line 5
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result p5

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, p5

    .line 16
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    add-int/2addr v0, p5

    .line 19
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    add-int/2addr v0, p5

    .line 22
    add-int/2addr v0, p3

    .line 23
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 25
    invoke-static {p2, v0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 28
    move-result p2

    .line 29
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    add-int/2addr p3, p4

    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    move-result p3

    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 42
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 7
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 11
    iget v1, p0, Lmiuix/core/widget/NestedScrollView;->mInitPaddingTop:I

    .line 13
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mInitPaddingTop:I

    .line 10
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_44

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    const/16 v2, 0x8

    .line 16
    if-eq v0, v2, :cond_12

    .line 18
    goto :goto_44

    .line 19
    :cond_12
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 21
    if-nez v0, :cond_44

    .line 23
    const/16 v0, 0x9

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x0

    .line 30
    cmpl-float v0, p1, v0

    .line 32
    if-eqz v0, :cond_44

    .line 34
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 37
    move-result v0

    .line 38
    mul-float/2addr p1, v0

    .line 39
    float-to-int p1, p1

    .line 40
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 47
    move-result v2

    .line 48
    sub-int p1, v2, p1

    .line 50
    if-gez p1, :cond_35

    .line 52
    move v0, v1

    .line 53
    goto :goto_39

    .line 54
    :cond_35
    if-le p1, v0, :cond_38

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v0, p1

    .line 58
    :goto_39
    if-eq v0, v2, :cond_44

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 63
    move-result p1

    .line 64
    invoke-super {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_44
    :goto_44
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_d

    .line 9
    iget-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 11
    if-eqz v3, :cond_d

    .line 13
    return v2

    .line 14
    :cond_d
    and-int/lit16 v0, v0, 0xff

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_a4

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v0, v2, :cond_7d

    .line 22
    if-eq v0, v1, :cond_24

    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_7d

    .line 27
    const/4 v1, 0x6

    .line 28
    if-eq v0, v1, :cond_1f

    .line 30
    goto/16 :goto_db

    .line 32
    :cond_1f
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 35
    goto/16 :goto_db

    .line 37
    :cond_24
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 39
    if-ne v0, v4, :cond_2a

    .line 41
    goto/16 :goto_db

    .line 43
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 46
    move-result v5

    .line 47
    if-ne v5, v4, :cond_4d

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v1, "Invalid pointerId="

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, " in onInterceptTouchEvent"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    const-string v0, "NestedScrollView"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto/16 :goto_db

    .line 78
    :cond_4d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 81
    move-result v0

    .line 82
    float-to-int v0, v0

    .line 83
    iget v4, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 85
    sub-int v4, v0, v4

    .line 87
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 90
    move-result v4

    .line 91
    iget v5, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 93
    if-le v4, v5, :cond_db

    .line 95
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getNestedScrollAxes()I

    .line 98
    move-result v4

    .line 99
    and-int/2addr v1, v4

    .line 100
    if-nez v1, :cond_db

    .line 102
    iput-boolean v2, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 104
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 106
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 109
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 114
    iput v3, p0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_db

    .line 122
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 125
    goto :goto_db

    .line 126
    :cond_7d
    iput-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 128
    iput v4, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 130
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 133
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 138
    move-result v5

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 142
    move-result v6

    .line 143
    const/4 v7, 0x0

    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 149
    move-result v10

    .line 150
    invoke-virtual/range {v4 .. v10}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_a0

    .line 156
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 158
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 161
    :cond_a0
    invoke-virtual {p0, v3}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 164
    goto :goto_db

    .line 165
    :cond_a4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 168
    move-result v0

    .line 169
    float-to-int v0, v0

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 173
    move-result v4

    .line 174
    float-to-int v4, v4

    .line 175
    invoke-direct {p0, v4, v0}, Lmiuix/core/widget/NestedScrollView;->inChild(II)Z

    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_ba

    .line 181
    iput-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 183
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 186
    goto :goto_db

    .line 187
    :cond_ba
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 189
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 192
    move-result v0

    .line 193
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 195
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 198
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 200
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 203
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 205
    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 208
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 210
    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 213
    move-result p1

    .line 214
    xor-int/2addr p1, v2

    .line 215
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 217
    invoke-virtual {p0, v1, v3}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 220
    :cond_db
    :goto_db
    iget-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 222
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 7

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 7
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 9
    if-eqz p2, :cond_15

    .line 11
    invoke-static {p2, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_15

    .line 17
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 19
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 22
    :cond_15
    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 25
    iget-boolean p4, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 27
    if-nez p4, :cond_63

    .line 29
    iget-object p4, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 31
    if-eqz p4, :cond_2d

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 36
    move-result p4

    .line 37
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 39
    iget v0, v0, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 41
    invoke-virtual {p0, p4, v0}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 44
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    move-result p2

    .line 50
    if-lez p2, :cond_47

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result p1

    .line 66
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 68
    add-int/2addr p1, p4

    .line 69
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 71
    add-int/2addr p1, p2

    .line 72
    :cond_47
    sub-int/2addr p5, p3

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 76
    move-result p2

    .line 77
    sub-int/2addr p5, p2

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    move-result p2

    .line 82
    sub-int/2addr p5, p2

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 86
    move-result p2

    .line 87
    invoke-static {p2, p5, p1}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    .line 90
    move-result p1

    .line 91
    if-eq p1, p2, :cond_63

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 96
    move-result p2

    .line 97
    invoke-virtual {p0, p2, p1}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 100
    :cond_63
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 107
    move-result p2

    .line 108
    invoke-virtual {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 111
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 114
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result p2

    .line 20
    if-lez p2, :cond_58

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 53
    sub-int/2addr v2, v3

    .line 54
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 56
    sub-int/2addr v2, v3

    .line 57
    if-ge v1, v2, :cond_58

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 66
    move-result v3

    .line 67
    add-int/2addr v3, v1

    .line 68
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 70
    add-int/2addr v3, v1

    .line 71
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 73
    add-int/2addr v3, v1

    .line 74
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 76
    invoke-static {p1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 79
    move-result p1

    .line 80
    const/high16 v0, 0x40000000  # 2.0f

    .line 82
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 89
    :cond_58
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1
    if-nez p4, :cond_c

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 8
    float-to-int p1, p3

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    .line 12
    return p2

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 12

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p5, p1, p2}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p5, p6, p1}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 1
    invoke-direct {p0, p5, p6, p7}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Lm0/u;

    invoke-virtual {p1, p3, p4}, Lm0/u;->a(II)V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1, p4}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 4
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_6

    .line 4
    const/16 p1, 0x82

    .line 6
    goto :goto_b

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_b

    .line 10
    const/16 p1, 0x21

    .line 12
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 14
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_23

    .line 35
    return v1

    .line 36
    :cond_23
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2a

    .line 42
    return v1

    .line 43
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 20
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    .line 23
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lmiuix/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 13
    move-result v0

    .line 14
    iput v0, v1, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 16
    return-object v1
.end method

.method public onScrollChanged(IIII)V
    .registers 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 4
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mOnScrollChangeListener:Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    move-object v1, p0

    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    invoke-interface/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Lmiuix/core/widget/NestedScrollView;IIII)V

    .line 16
    :cond_f
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2c

    .line 10
    if-ne p0, p1, :cond_c

    .line 12
    goto :goto_2c

    .line 13
    :cond_c
    invoke-static {p1, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_2c

    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p4}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_2c

    .line 26
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 31
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 36
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Lm0/u;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_9

    .line 2
    iput v0, p1, Lm0/u;->b:I

    goto :goto_b

    .line 3
    :cond_9
    iput v0, p1, Lm0/u;->a:I

    .line 4
    :goto_b
    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    .line 1
    move-object/from16 v10, p0

    .line 3
    move-object/from16 v11, p1

    .line 5
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    move-result v0

    .line 12
    const/4 v12, 0x0

    .line 13
    if-nez v0, :cond_10

    .line 15
    iput v12, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 17
    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 20
    move-result-object v13

    .line 21
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 23
    int-to-float v1, v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v13, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 28
    const/4 v1, 0x2

    .line 29
    const/4 v14, 0x1

    .line 30
    if-eqz v0, :cond_21e

    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq v0, v14, :cond_1d1

    .line 35
    if-eq v0, v1, :cond_84

    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq v0, v1, :cond_54

    .line 40
    const/4 v1, 0x5

    .line 41
    if-eq v0, v1, :cond_41

    .line 43
    const/4 v1, 0x6

    .line 44
    if-eq v0, v1, :cond_2f

    .line 46
    goto/16 :goto_254

    .line 48
    :cond_2f
    invoke-direct/range {p0 .. p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 51
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 53
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 56
    move-result v0

    .line 57
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 64
    goto/16 :goto_254

    .line 66
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 69
    move-result v0

    .line 70
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 73
    move-result v1

    .line 74
    float-to-int v1, v1

    .line 75
    iput v1, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 77
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 80
    move-result v0

    .line 81
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 83
    goto/16 :goto_254

    .line 85
    :cond_54
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 87
    if-eqz v0, :cond_7d

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 92
    move-result v0

    .line 93
    if-lez v0, :cond_7d

    .line 95
    iget-object v15, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 100
    move-result v16

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 104
    move-result v17

    .line 105
    const/16 v18, 0x0

    .line 107
    const/16 v19, 0x0

    .line 109
    const/16 v20, 0x0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 114
    move-result v21

    .line 115
    invoke-virtual/range {v15 .. v21}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7d

    .line 121
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 123
    invoke-static/range {p0 .. p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 126
    :cond_7d
    iput v3, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 128
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->endDrag()V

    .line 131
    goto/16 :goto_254

    .line 133
    :cond_84
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 135
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 138
    move-result v15

    .line 139
    if-ne v15, v3, :cond_a7

    .line 141
    const-string v0, "Invalid pointerId="

    .line 143
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-result-object v0

    .line 147
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, " in onTouchEvent"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    const-string v1, "NestedScrollView"

    .line 163
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto/16 :goto_254

    .line 168
    :cond_a7
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getY(I)F

    .line 171
    move-result v0

    .line 172
    float-to-int v6, v0

    .line 173
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 175
    sub-int/2addr v0, v6

    .line 176
    iget-boolean v1, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 178
    if-nez v1, :cond_cf

    .line 180
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 183
    move-result v1

    .line 184
    iget v2, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 186
    if-le v1, v2, :cond_cf

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_c4

    .line 194
    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 197
    :cond_c4
    iput-boolean v14, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 199
    if-lez v0, :cond_cc

    .line 201
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 203
    sub-int/2addr v0, v1

    .line 204
    goto :goto_cf

    .line 205
    :cond_cc
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 207
    add-int/2addr v0, v1

    .line 208
    :cond_cf
    :goto_cf
    move v7, v0

    .line 209
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 211
    if-eqz v0, :cond_254

    .line 213
    const/4 v1, 0x0

    .line 214
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 216
    iget-object v4, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 218
    const/4 v5, 0x0

    .line 219
    move-object/from16 v0, p0

    .line 221
    move v2, v7

    .line 222
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_f1

    .line 228
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 230
    aget v0, v0, v14

    .line 232
    sub-int/2addr v7, v0

    .line 233
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 235
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 237
    aget v1, v1, v14

    .line 239
    add-int/2addr v0, v1

    .line 240
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 242
    :cond_f1
    move/from16 v16, v7

    .line 244
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 246
    aget v0, v0, v14

    .line 248
    sub-int/2addr v6, v0

    .line 249
    iput v6, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 254
    move-result v17

    .line 255
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 258
    move-result v9

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_110

    .line 265
    if-ne v0, v14, :cond_10d

    .line 267
    if-lez v9, :cond_10d

    .line 269
    goto :goto_110

    .line 270
    :cond_10d
    move/from16 v18, v12

    .line 272
    goto :goto_112

    .line 273
    :cond_110
    :goto_110
    move/from16 v18, v14

    .line 275
    :goto_112
    const/4 v1, 0x0

    .line 276
    const/4 v3, 0x0

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 280
    move-result v4

    .line 281
    const/4 v5, 0x0

    .line 282
    const/4 v7, 0x0

    .line 283
    const/4 v8, 0x0

    .line 284
    const/16 v19, 0x1

    .line 286
    move-object/from16 v0, p0

    .line 288
    move/from16 v2, v16

    .line 290
    move v6, v9

    .line 291
    move/from16 v22, v9

    .line 293
    move/from16 v9, v19

    .line 295
    invoke-virtual/range {v0 .. v9}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_137

    .line 301
    invoke-virtual {v10, v12}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_137

    .line 307
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 309
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 312
    :cond_137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 315
    move-result v0

    .line 316
    sub-int v2, v0, v17

    .line 318
    sub-int v4, v16, v2

    .line 320
    iget-object v7, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 322
    aput v12, v7, v14

    .line 324
    const/4 v1, 0x0

    .line 325
    const/4 v3, 0x0

    .line 326
    iget-object v5, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 328
    const/4 v6, 0x0

    .line 329
    move-object/from16 v0, p0

    .line 331
    invoke-virtual/range {v0 .. v7}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 334
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 336
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 338
    aget v1, v1, v14

    .line 340
    sub-int/2addr v0, v1

    .line 341
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 343
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 345
    add-int/2addr v0, v1

    .line 346
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 348
    if-eqz v18, :cond_254

    .line 350
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 352
    aget v0, v0, v14

    .line 354
    sub-int v0, v16, v0

    .line 356
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    .line 359
    add-int v1, v17, v0

    .line 361
    if-gez v1, :cond_18e

    .line 363
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 365
    int-to-float v0, v0

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 369
    move-result v2

    .line 370
    int-to-float v2, v2

    .line 371
    div-float/2addr v0, v2

    .line 372
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    .line 375
    move-result v2

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 379
    move-result v3

    .line 380
    int-to-float v3, v3

    .line 381
    div-float/2addr v2, v3

    .line 382
    invoke-static {v1, v0, v2}, Landroidx/core/widget/d$a;->a(Landroid/widget/EdgeEffect;FF)V

    .line 385
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 387
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 390
    move-result v0

    .line 391
    if-nez v0, :cond_1b8

    .line 393
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 395
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 398
    goto :goto_1b8

    .line 399
    :cond_18e
    move/from16 v2, v22

    .line 401
    if-le v1, v2, :cond_1b8

    .line 403
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 405
    int-to-float v0, v0

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 409
    move-result v2

    .line 410
    int-to-float v2, v2

    .line 411
    div-float/2addr v0, v2

    .line 412
    const/high16 v2, 0x3f800000  # 1.0f

    .line 414
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    .line 417
    move-result v3

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 421
    move-result v4

    .line 422
    int-to-float v4, v4

    .line 423
    div-float/2addr v3, v4

    .line 424
    sub-float/2addr v2, v3

    .line 425
    invoke-static {v1, v0, v2}, Landroidx/core/widget/d$a;->a(Landroid/widget/EdgeEffect;FF)V

    .line 428
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 430
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_1b8

    .line 436
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 438
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 441
    :cond_1b8
    :goto_1b8
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 443
    if-eqz v0, :cond_254

    .line 445
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_1ca

    .line 451
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 453
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 456
    move-result v0

    .line 457
    if-nez v0, :cond_254

    .line 459
    :cond_1ca
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 461
    invoke-static/range {p0 .. p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 464
    goto/16 :goto_254

    .line 466
    :cond_1d1
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 468
    const/16 v1, 0x3e8

    .line 470
    iget v4, v10, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 472
    int-to-float v4, v4

    .line 473
    invoke-virtual {v0, v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 476
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 481
    move-result v0

    .line 482
    float-to-int v0, v0

    .line 483
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 486
    move-result v1

    .line 487
    iget v4, v10, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 489
    if-lt v1, v4, :cond_1f9

    .line 491
    neg-int v0, v0

    .line 492
    int-to-float v1, v0

    .line 493
    invoke-virtual {v10, v2, v1}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    .line 496
    move-result v4

    .line 497
    if-nez v4, :cond_218

    .line 499
    invoke-virtual {v10, v2, v1, v14}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 502
    invoke-virtual {v10, v0}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    .line 505
    goto :goto_218

    .line 506
    :cond_1f9
    iget-object v15, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 511
    move-result v16

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 515
    move-result v17

    .line 516
    const/16 v18, 0x0

    .line 518
    const/16 v19, 0x0

    .line 520
    const/16 v20, 0x0

    .line 522
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 525
    move-result v21

    .line 526
    invoke-virtual/range {v15 .. v21}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_218

    .line 532
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 534
    invoke-static/range {p0 .. p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 537
    :cond_218
    :goto_218
    iput v3, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 539
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->endDrag()V

    .line 542
    goto :goto_254

    .line 543
    :cond_21e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 546
    move-result v0

    .line 547
    if-nez v0, :cond_225

    .line 549
    return v12

    .line 550
    :cond_225
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 552
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 555
    move-result v0

    .line 556
    xor-int/2addr v0, v14

    .line 557
    iput-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 559
    if-eqz v0, :cond_239

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 564
    move-result-object v0

    .line 565
    if-eqz v0, :cond_239

    .line 567
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 570
    :cond_239
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 572
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 575
    move-result v0

    .line 576
    if-nez v0, :cond_244

    .line 578
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 581
    :cond_244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 584
    move-result v0

    .line 585
    float-to-int v0, v0

    .line 586
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 588
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 591
    move-result v0

    .line 592
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 594
    invoke-virtual {v10, v1, v12}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 597
    :cond_254
    :goto_254
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 599
    if-eqz v0, :cond_25b

    .line 601
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 604
    :cond_25b
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 607
    return v14
.end method

.method public overScrollByCompat(IIIIIIIIZ)Z
    .registers 22

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    .line 9
    move-result v2

    .line 10
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-le v2, v3, :cond_13

    .line 18
    move v2, v5

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v2, v4

    .line 21
    :goto_14
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    .line 28
    move-result v6

    .line 29
    if-le v3, v6, :cond_20

    .line 31
    move v3, v5

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v3, v4

    .line 34
    :goto_21
    if-eqz v1, :cond_2a

    .line 36
    if-ne v1, v5, :cond_28

    .line 38
    if-eqz v2, :cond_28

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    move v2, v4

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    :goto_2a
    move v2, v5

    .line 44
    :goto_2b
    if-eqz v1, :cond_34

    .line 46
    if-ne v1, v5, :cond_32

    .line 48
    if-eqz v3, :cond_32

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    move v1, v4

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    :goto_34
    move v1, v5

    .line 54
    :goto_35
    add-int v3, p3, p1

    .line 56
    if-nez v2, :cond_3b

    .line 58
    move v2, v4

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    move/from16 v2, p7

    .line 62
    :goto_3d
    add-int v6, p4, p2

    .line 64
    if-nez v1, :cond_43

    .line 66
    move v1, v4

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    move/from16 v1, p8

    .line 70
    :goto_45
    neg-int v7, v2

    .line 71
    add-int v2, v2, p5

    .line 73
    neg-int v8, v1

    .line 74
    add-int v1, v1, p6

    .line 76
    if-le v3, v2, :cond_50

    .line 78
    move v3, v2

    .line 79
    move v2, v5

    .line 80
    goto :goto_56

    .line 81
    :cond_50
    if-ge v3, v7, :cond_55

    .line 83
    move v2, v5

    .line 84
    move v3, v7

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v2, v4

    .line 87
    :goto_56
    if-le v6, v1, :cond_5b

    .line 89
    move v6, v1

    .line 90
    move v1, v5

    .line 91
    goto :goto_61

    .line 92
    :cond_5b
    if-ge v6, v8, :cond_60

    .line 94
    move v1, v5

    .line 95
    move v6, v8

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v1, v4

    .line 98
    :goto_61
    if-eqz v1, :cond_80

    .line 100
    invoke-virtual {p0, v5}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_80

    .line 106
    iget-object v7, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 114
    move-result v11

    .line 115
    move-object p1, v7

    .line 116
    move p2, v3

    .line 117
    move p3, v6

    .line 118
    move/from16 p4, v8

    .line 120
    move/from16 p5, v9

    .line 122
    move/from16 p6, v10

    .line 124
    move/from16 p7, v11

    .line 126
    invoke-virtual/range {p1 .. p7}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 129
    :cond_80
    invoke-virtual {p0, v3, v6, v2, v1}, Lmiuix/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 132
    if-nez v2, :cond_87

    .line 134
    if-eqz v1, :cond_88

    .line 136
    :cond_87
    move v4, v5

    .line 137
    :cond_88
    return v4
.end method

.method public pageScroll(I)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x82

    .line 5
    if-ne p1, v2, :cond_8

    .line 7
    move v2, v0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v2, v1

    .line 10
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v3

    .line 14
    if-eqz v2, :cond_40

    .line 16
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v3

    .line 23
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_51

    .line 31
    sub-int/2addr v1, v0

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 45
    move-result v0

    .line 46
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 48
    add-int/2addr v0, v1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 58
    add-int/2addr v2, v3

    .line 59
    if-le v2, v1, :cond_51

    .line 61
    sub-int/2addr v1, v3

    .line 62
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 64
    goto :goto_51

    .line 65
    :cond_40
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 70
    move-result v2

    .line 71
    sub-int/2addr v2, v3

    .line 72
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 74
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 76
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 78
    if-gez v2, :cond_51

    .line 80
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 82
    :cond_51
    :goto_51
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 86
    add-int/2addr v3, v1

    .line 87
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 89
    invoke-direct {p0, p1, v1, v3}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    .line 92
    move-result p1

    .line 93
    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 11
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 14
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 17
    move-result p1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 22
    invoke-direct {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 6
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 4
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    return-void
.end method

.method public scrollTo(II)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_58

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result v3

    .line 26
    sub-int/2addr v2, v3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v3

    .line 31
    sub-int/2addr v2, v3

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 35
    move-result v3

    .line 36
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 38
    add-int/2addr v3, v4

    .line 39
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 41
    add-int/2addr v3, v4

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v4

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 49
    move-result v5

    .line 50
    sub-int/2addr v4, v5

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 54
    move-result v5

    .line 55
    sub-int/2addr v4, v5

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 59
    move-result v0

    .line 60
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    add-int/2addr v0, v5

    .line 63
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 65
    add-int/2addr v0, v1

    .line 66
    invoke-static {p1, v2, v3}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    .line 69
    move-result p1

    .line 70
    invoke-static {p2, v4, v0}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    .line 73
    move-result p2

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 77
    move-result v0

    .line 78
    if-ne p1, v0, :cond_55

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 83
    move-result v0

    .line 84
    if-eq p2, v0, :cond_58

    .line 86
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 89
    :cond_58
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 7
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOnScrollChangeListener(Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mOnScrollChangeListener:Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;

    .line 3
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 3
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public final smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;->smoothScrollTo(IIZ)V

    return-void
.end method

.method public smoothScrollTo(IIZ)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p1, p2}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method
