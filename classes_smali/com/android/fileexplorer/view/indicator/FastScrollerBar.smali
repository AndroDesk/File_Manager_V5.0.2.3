.class public Lcom/android/fileexplorer/view/indicator/FastScrollerBar;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FastScrollerBar.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r;
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;
.implements Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;,
        Lcom/android/fileexplorer/view/indicator/FastScrollerBar$ProportionTagAnimationState;,
        Lcom/android/fileexplorer/view/indicator/FastScrollerBar$TimeCapsuleAnimationState;,
        Lcom/android/fileexplorer/view/indicator/FastScrollerBar$AnimationState;,
        Lcom/android/fileexplorer/view/indicator/FastScrollerBar$DragState;,
        Lcom/android/fileexplorer/view/indicator/FastScrollerBar$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_ANIMING_IN:I = 0x1

.field private static final ANIMATION_STATE_ANIMING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_HORIZONTAL_X:I = 0x3

.field private static final DRAG_HORIZONTAL_Y:I = 0x4

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_VERTICAL_X:I = 0x1

.field private static final DRAG_VERTICAL_Y:I = 0x2

.field private static final HIDE_DURATION_DELAY_MS:I = 0x7d0

.field private static final PROPORTION_TAG_ANIMATION_STATE_ANIMING_IN:I = 0x1

.field private static final PROPORTION_TAG_ANIMATION_STATE_ANIMING_OUT:I = 0x3

.field private static final PROPORTION_TAG_ANIMATION_STATE_IN:I = 0x2

.field private static final PROPORTION_TAG_ANIMATION_STATE_OUT:I = 0x0

.field private static final RESET_POSITION_DURATION_MS:I = 0x190

.field private static final SCROLL_SLOP:I = 0x5

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_HIDDEN:I = 0x0

.field public static final STATE_PRESSED:I = 0x2

.field public static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FastScrollerBar"

.field private static final TIME_CAPSULE_ANIMATION_STATE_ANIMING_IN:I = 0x1

.field private static final TIME_CAPSULE_ANIMATION_STATE_ANIMING_OUT:I = 0x3

.field private static final TIME_CAPSULE_ANIMATION_STATE_IN:I = 0x2

.field private static final TIME_CAPSULE_ANIMATION_STATE_OUT:I


# instance fields
.field private mAnimationState:I

.field private mBottomMargin:I

.field private mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

.field private mDragState:I
    .annotation build Lcom/android/fileexplorer/view/indicator/FastScrollerBar$DragState;
    .end annotation
.end field

.field private mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

.field private mFastScrollerDragInitX:I

.field private mFastScrollerDragInitY:I

.field private mFastScrollerDragX:F

.field private mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

.field private mFastScrollerThumbInitX:I

.field private mFastScrollerThumbInitY:I

.field private mFastScrollerThumbMargin:I

.field private mFastScrollerThumbX:I

.field private mFastScrollerThumbY:I

.field private mFastTimeCapsuleMargin:I

.field private mFastTimeCapsuleX:I

.field private mFastTimeCapsuleY:I

.field private mHorizontalMargin:I

.field private final mHorizontalRange:[I

.field private mIsFastScrollerInvisible:Z

.field private mIsFastScrollerPressed:Z

.field private mIsInRight:Z

.field private mLayoutOrientation:I

.field private mNeedDispatchFakeEvent:Z

.field private mNeedDrawCapsule:Z

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private mOffsetToThumbTop:I

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

.field private mOnStateChangedListener:Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;

.field private mProportionTagAnimationState:I

.field private mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

.field private final mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

.field private mRecyclerViewChanged:Z

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private mResetPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mScrollSlop:I

.field private mScrollbarMinimumRange:I

.field private mState:I
    .annotation build Lcom/android/fileexplorer/view/indicator/FastScrollerBar$State;
    .end annotation
.end field

.field private mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

.field private mTimeCapsuleAnimationState:I

.field private mTopMargin:I

.field private final mVerticalRange:[I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 20
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 22
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v2, v1, [I

    .line 27
    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mVerticalRange:[I

    .line 29
    new-array v1, v1, [I

    .line 31
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalRange:[I

    .line 33
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    .line 37
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;

    .line 39
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V

    .line 42
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 44
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 48
    iput-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 50
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;)V

    .line 53
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 55
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_48

    .line 61
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isLayoutRTL()Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_45

    .line 67
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 73
    :cond_48
    :goto_48
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 75
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getThumbMargin()I

    .line 78
    move-result p2

    .line 79
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    .line 81
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 83
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    .line 86
    move-result p2

    .line 87
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollbarMinimumRange:I

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 100
    move-result p2

    .line 101
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 114
    move-result-object p1

    .line 115
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 117
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mLayoutOrientation:I

    .line 119
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerInvisible:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 4
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 18
    return-void
.end method

.method private dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalRange:[I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalMargin:I

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v1, v0, v2

    .line 8
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 10
    sub-int/2addr v2, v1

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 13
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v2, v1

    .line 18
    const/4 v1, 0x1

    .line 19
    aput v2, v0, v1

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalRange:[I

    .line 23
    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mVerticalRange:[I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v1, v0, v2

    .line 8
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 10
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mBottomMargin:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 15
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    aput v1, v0, v2

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mVerticalRange:[I

    .line 25
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getHorizontalRange()[I

    .line 4
    move-result-object v3

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 12
    move-result v4

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 18
    move-result v5

    .line 19
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 21
    move-object v0, p0

    .line 22
    move v2, p1

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->scrollTo(FF[IIII)I

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_22

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 35
    :cond_22
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    .line 37
    return-void
.end method

.method private isLayoutLandScape()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_15

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    return v0
.end method

.method private isLayoutRTL()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_c

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    :goto_d
    return v1
.end method

.method private isNeedDrawCapsule()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method private recordFastScrollerBarClick()V
    .registers 1

    return-void
.end method

.method private requestRedraw()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    aget v0, p3, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    aget p3, p3, v1

    .line 7
    sub-int/2addr v0, p3

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    sub-float/2addr p2, p1

    .line 12
    int-to-float p1, v0

    .line 13
    div-float/2addr p2, p1

    .line 14
    sub-int/2addr p4, p6

    .line 15
    int-to-float p1, p4

    .line 16
    mul-float/2addr p2, p1

    .line 17
    float-to-int p1, p2

    .line 18
    add-int/2addr p5, p1

    .line 19
    if-ge p5, p4, :cond_17

    .line 21
    if-ltz p5, :cond_17

    .line 23
    return p1

    .line 24
    :cond_17
    return v1
.end method

.method private setState(I)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/view/indicator/FastScrollerBar$State;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_1a

    .line 4
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 6
    if-eq v1, v0, :cond_1a

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 10
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->stretchArrowAnimator()V

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 15
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelHideScrollerBarAnimator()V

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showCapsuleByAnimator()V

    .line 27
    :cond_1a
    if-nez p1, :cond_51

    .line 29
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq v1, v0, :cond_23

    .line 34
    if-ne v1, v2, :cond_28

    .line 36
    :cond_23
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 38
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->retractArrowAnimator()V

    .line 41
    :cond_28
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 43
    if-eqz v1, :cond_32

    .line 45
    const/16 v1, 0x7d0

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideScrollerBar(I)V

    .line 50
    goto :goto_35

    .line 51
    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 54
    :goto_35
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 56
    if-eq v1, v2, :cond_3b

    .line 58
    if-ne v1, v0, :cond_54

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 62
    if-eqz v0, :cond_42

    .line 64
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideCapsuleByAnimator()V

    .line 67
    :cond_42
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 69
    if-ne v0, v2, :cond_54

    .line 71
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->resetScrollerBarPosition()V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 76
    if-eqz v0, :cond_54

    .line 78
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideProportionTagByAnimator()V

    .line 81
    goto :goto_54

    .line 82
    :cond_51
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showScrollerBar()V

    .line 85
    :cond_54
    :goto_54
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnStateChangedListener:Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;

    .line 89
    if-eqz v0, :cond_5d

    .line 91
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;->onStateChanged(I)V

    .line 94
    :cond_5d
    return-void
.end method

.method private setupCallbacks()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 18
    return-void
.end method

.method private verticalScrollTo(FF)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    aget v2, v0, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    aget v4, v0, v3

    .line 11
    sub-int/2addr v2, v4

    .line 12
    if-nez v2, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 17
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    .line 19
    sub-int/2addr v4, v5

    .line 20
    int-to-float v4, v4

    .line 21
    int-to-float v5, v2

    .line 22
    div-float/2addr v4, v5

    .line 23
    const/4 v5, 0x0

    .line 24
    const/high16 v6, 0x3f800000  # 1.0f

    .line 26
    invoke-static {v4, v5, v6}, La/b;->p(FFF)F

    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 32
    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollPositionAndOffset(F)[I

    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_33

    .line 38
    array-length v6, v5

    .line 39
    const/4 v7, 0x2

    .line 40
    if-ne v6, v7, :cond_33

    .line 42
    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 44
    aget v7, v5, v3

    .line 46
    aget v5, v5, v1

    .line 48
    invoke-virtual {v6, v7, v5}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->scrollToPositionWithOffset(II)V

    .line 51
    goto :goto_4a

    .line 52
    :cond_33
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 54
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 61
    move-result v5

    .line 62
    int-to-float v6, v5

    .line 63
    mul-float/2addr v6, v4

    .line 64
    float-to-int v6, v6

    .line 65
    sub-int/2addr v5, v1

    .line 66
    invoke-static {v6, v3, v5}, La/b;->q(III)I

    .line 69
    move-result v5

    .line 70
    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 72
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 75
    :goto_4a
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    .line 77
    float-to-int p1, p1

    .line 78
    aget v1, v0, v1

    .line 80
    int-to-float v1, v1

    .line 81
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    .line 83
    int-to-float v5, v5

    .line 84
    sub-float/2addr p2, v5

    .line 85
    aget v0, v0, v3

    .line 87
    int-to-float v0, v0

    .line 88
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 91
    move-result p2

    .line 92
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    .line 95
    move-result p2

    .line 96
    float-to-int p2, p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->updateThumbPositionByDragging(II)V

    .line 100
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_74

    .line 106
    invoke-virtual {p0, v4, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getCapsuleContent(FI)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;

    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_74

    .line 112
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 114
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V

    .line 117
    :cond_74
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setupCallbacks()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->updateThumbPositionByScrolling()V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 10
    return-void
.end method

.method public changeThumbAndCapsulePositionX()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isLayoutLandScape()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 9
    div-int/lit8 v0, v0, 0x2

    .line 11
    move v1, v0

    .line 12
    goto :goto_17

    .line 13
    :cond_c
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 15
    div-int/lit8 v1, v0, 0x3

    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 19
    div-int/lit8 v0, v0, 0x3

    .line 21
    move v3, v1

    .line 22
    move v1, v0

    .line 23
    move v0, v3

    .line 24
    :goto_17
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 26
    if-ge v2, v0, :cond_37

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_5b

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 39
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setIsInRight(Z)V

    .line 44
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 46
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 48
    if-le v0, v1, :cond_5b

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 52
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->showCapsuleByAnimator()V

    .line 55
    goto :goto_5b

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 58
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 61
    move-result v0

    .line 62
    add-int/2addr v0, v2

    .line 63
    if-lt v0, v1, :cond_5b

    .line 65
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 68
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5b

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 76
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setIsInRight(Z)V

    .line 81
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 83
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 85
    if-ge v0, v1, :cond_5b

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 89
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->showCapsuleByAnimator()V

    .line 92
    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_82

    .line 98
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 100
    if-eqz v0, :cond_74

    .line 102
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 104
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    .line 106
    sub-int/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 109
    invoke-interface {v1}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewWidth()I

    .line 112
    move-result v1

    .line 113
    sub-int/2addr v0, v1

    .line 114
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 116
    goto :goto_82

    .line 117
    :cond_74
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 119
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 121
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 124
    move-result v1

    .line 125
    add-int/2addr v1, v0

    .line 126
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    .line 128
    add-int/2addr v1, v0

    .line 129
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 131
    :cond_82
    :goto_82
    return-void
.end method

.method public detach()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->destroyCallbacks()V

    .line 4
    return-void
.end method

.method public freshTagProportions()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    aget v1, v0, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aget v0, v0, v2

    .line 11
    sub-int/2addr v1, v0

    .line 12
    if-nez v1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    .line 17
    if-eqz v0, :cond_5a

    .line 19
    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->isShowProportionTag()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_5a

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    .line 27
    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->createTagAdapter()Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_5a

    .line 33
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    .line 35
    invoke-interface {v3}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->isProportionTagChanged()Z

    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2c

    .line 41
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    .line 43
    if-eqz v3, :cond_57

    .line 45
    :cond_2c
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 47
    if-nez v3, :cond_3a

    .line 49
    new-instance v3, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 51
    invoke-direct {v3, v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V

    .line 54
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 56
    invoke-virtual {v3, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;)V

    .line 59
    :cond_3a
    const-string v0, "FastScrollerBar"

    .line 61
    const-string v3, "start calculate"

    .line 63
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 71
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    .line 73
    invoke-interface {v3}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->getProportionTagModel()Ljava/util/List;

    .line 76
    move-result-object v3

    .line 77
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    .line 79
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->refreshViews(Ljava/util/List;II)V

    .line 82
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    .line 84
    if-eqz v0, :cond_57

    .line 86
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    .line 88
    :cond_57
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showProportionTagByAnimator()V

    .line 91
    :cond_5a
    return-void
.end method

.method public getCapsuleContent(FI)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    .line 3
    if-eqz v0, :cond_3c

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_3c

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v2

    .line 29
    sub-int/2addr v1, v2

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 41
    move-result v3

    .line 42
    sub-int/2addr v2, v3

    .line 43
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    move-result v3

    .line 49
    sub-int/2addr v2, v3

    .line 50
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;->getDataPositionByDrag(IIFI)I

    .line 53
    move-result p1

    .line 54
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    .line 56
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;->getCapsuleContent(I)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    .line 62
    return-object p1
.end method

.method public hideCapsule()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->cancelHideCapsule()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->hideCapsule()V

    .line 16
    :cond_f
    return-void
.end method

.method public hideCapsuleByAnimator()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_9

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_13

    .line 9
    goto :goto_1b

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->cancelShowCapsule()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 17
    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/DrawView;->setVisible()V

    .line 20
    :cond_13
    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->hideCapsuleByAnimator()V

    .line 28
    :goto_1b
    return-void
.end method

.method public hideProportionTag()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelHideTagByAnimator()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setInvisible()V

    .line 16
    :cond_f
    return-void
.end method

.method public hideProportionTagByAnimator()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_9

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_13

    .line 9
    goto :goto_1b

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelShowTagByAnimator()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 17
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setVisible()V

    .line 20
    :cond_13
    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->hideTagByAnimator()V

    .line 28
    :goto_1b
    return-void
.end method

.method public hideScrollerBar()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setInvisible()V

    return-void
.end method

.method public hideScrollerBar(I)V
    .registers 5

    .line 3
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_1c

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelShowScrollerBarAnimator()V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setVisible()V

    :cond_13
    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->hideScrollerBarAnimator(J)V

    :goto_1c
    return-void
.end method

.method public isDragging()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public isFastScrollerPressed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    .line 3
    return v0
.end method

.method public isPointInsideFastScrollerThumb(FF)Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 3
    int-to-float v1, v0

    .line 4
    cmpl-float v1, p1, v1

    .line 6
    if-ltz v1, :cond_28

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 10
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v0

    .line 15
    int-to-float v0, v1

    .line 16
    cmpg-float p1, p1, v0

    .line 18
    if-gtz p1, :cond_28

    .line 20
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 22
    int-to-float v0, p1

    .line 23
    cmpl-float v0, p2, v0

    .line 25
    if-ltz v0, :cond_28

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 29
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    .line 32
    move-result v0

    .line 33
    add-int/2addr v0, p1

    .line 34
    int-to-float p1, v0

    .line 35
    cmpg-float p1, p2, p1

    .line 37
    if-gtz p1, :cond_28

    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    return p1
.end method

.method public onAnimatorFadeInEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 7
    return-void
.end method

.method public onAnimatorFadeOutEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 4
    return-void
.end method

.method public onAnimatorUpdate()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 4
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object p2

    .line 18
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 20
    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mLayoutOrientation:I

    .line 22
    if-ne p3, p2, :cond_9d

    .line 24
    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 26
    if-eqz p3, :cond_9d

    .line 28
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 30
    if-nez v0, :cond_21

    .line 32
    goto/16 :goto_9d

    .line 34
    :cond_21
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 39
    move-result p2

    .line 40
    const/4 v0, 0x1

    .line 41
    if-eq p3, p2, :cond_37

    .line 43
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 48
    move-result p2

    .line 49
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 51
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setDefaultPosition()V

    .line 54
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    .line 56
    :cond_37
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 58
    iget-object p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 60
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 63
    move-result p3

    .line 64
    if-eq p2, p3, :cond_4b

    .line 66
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 71
    move-result p2

    .line 72
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 74
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    .line 76
    :cond_4b
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 78
    if-eqz p2, :cond_5c

    .line 80
    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 82
    if-eqz p3, :cond_5c

    .line 84
    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 86
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isLayoutRTL()Z

    .line 89
    move-result v0

    .line 90
    invoke-virtual {p2, p3, v0, p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->draw(IZLandroid/graphics/Canvas;)V

    .line 93
    :cond_5c
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_7b

    .line 99
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 101
    if-eqz p2, :cond_7b

    .line 103
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 105
    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    .line 107
    int-to-float v0, p2

    .line 108
    int-to-float v1, p3

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 114
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/indicator/DrawView;->draw(Landroid/graphics/Canvas;)V

    .line 117
    neg-int p2, p2

    .line 118
    int-to-float p2, p2

    .line 119
    neg-int p3, p3

    .line 120
    int-to-float p3, p3

    .line 121
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    :cond_7b
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 126
    if-eqz p2, :cond_9c

    .line 128
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    .line 130
    if-nez p2, :cond_87

    .line 132
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    .line 134
    if-eqz p2, :cond_9c

    .line 136
    :cond_87
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 138
    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 140
    int-to-float v0, p2

    .line 141
    int-to-float v1, p3

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 147
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->draw(Landroid/graphics/Canvas;)V

    .line 150
    neg-int p2, p2

    .line 151
    int-to-float p2, p2

    .line 152
    neg-int p3, p3

    .line 153
    int-to-float p3, p3

    .line 154
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    :cond_9c
    return-void

    .line 158
    :cond_9d
    :goto_9d
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mLayoutOrientation:I

    .line 160
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 165
    move-result p1

    .line 166
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 168
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 173
    move-result p1

    .line 174
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 176
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setDefaultPosition()V

    .line 179
    const/4 p1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 183
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p1, :cond_d

    .line 10
    if-eq p1, v2, :cond_d

    .line 12
    if-ne p1, v1, :cond_14

    .line 14
    :cond_d
    const/4 v3, -0x1

    .line 15
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 17
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    .line 21
    :cond_14
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 23
    if-eqz v3, :cond_8e

    .line 25
    if-nez p1, :cond_37

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, p1, v3}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isPointInsideFastScrollerThumb(FF)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_85

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 44
    move-result p1

    .line 45
    float-to-int p1, p1

    .line 46
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 51
    move-result p1

    .line 52
    float-to-int p1, p1

    .line 53
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 55
    goto :goto_5e

    .line 56
    :cond_37
    const/4 v3, 0x2

    .line 57
    if-ne p1, v3, :cond_85

    .line 59
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 61
    if-lez p1, :cond_60

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 66
    move-result p1

    .line 67
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 69
    int-to-float v4, v4

    .line 70
    sub-float/2addr p1, v4

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 74
    move-result p1

    .line 75
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    .line 77
    int-to-float v4, v4

    .line 78
    cmpl-float p1, p1, v4

    .line 80
    if-lez p1, :cond_60

    .line 82
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 84
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5c

    .line 90
    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 95
    :goto_5e
    move v0, v2

    .line 96
    goto :goto_85

    .line 97
    :cond_60
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 99
    if-lez p1, :cond_85

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 104
    move-result p1

    .line 105
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 107
    int-to-float p2, p2

    .line 108
    sub-float/2addr p1, p2

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 112
    move-result p1

    .line 113
    const/high16 p2, 0x40a00000  # 5.0f

    .line 115
    cmpl-float p1, p1, p2

    .line 117
    if-lez p1, :cond_85

    .line 119
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 121
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_81

    .line 127
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 129
    goto :goto_5e

    .line 130
    :cond_81
    const/4 p1, 0x4

    .line 131
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 133
    goto :goto_5e

    .line 134
    :cond_85
    :goto_85
    if-eqz v0, :cond_89

    .line 136
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    .line 138
    :cond_89
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 140
    if-ne p1, v1, :cond_8e

    .line 142
    move v0, v2

    .line 143
    :cond_8e
    return v0
.end method

.method public onProportionTagAnimatorFadeInEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 4
    return-void
.end method

.method public onProportionTagAnimatorFadeOutEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 4
    return-void
.end method

.method public onProportionTagAnimatorUpdate()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 4
    return-void
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTimeCapsuleAnimatorFadeInEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 4
    return-void
.end method

.method public onTimeCapsuleAnimatorFadeOutEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 4
    return-void
.end method

.method public onTimeCapsuleAnimatorUpdate()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 4
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 11

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x3

    .line 8
    if-eqz p1, :cond_d

    .line 10
    if-eq p1, v1, :cond_d

    .line 12
    if-ne p1, v2, :cond_14

    .line 14
    :cond_d
    const/4 v3, -0x1

    .line 15
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 17
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    .line 21
    :cond_14
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x2

    .line 23
    if-nez p1, :cond_62

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v5

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 32
    move-result v6

    .line 33
    invoke-virtual {p0, v5, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isPointInsideFastScrollerThumb(FF)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_f2

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 42
    move-result v5

    .line 43
    float-to-int v5, v5

    .line 44
    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 49
    move-result v5

    .line 50
    float-to-int v5, v5

    .line 51
    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 53
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 56
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    .line 58
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->recordFastScrollerBarClick()V

    .line 61
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    .line 64
    move-result-object v5

    .line 65
    aget v6, v5, v1

    .line 67
    aget v5, v5, v0

    .line 69
    sub-int/2addr v6, v5

    .line 70
    if-eqz v6, :cond_f2

    .line 72
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 74
    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    .line 76
    sub-int/2addr v5, v7

    .line 77
    int-to-float v5, v5

    .line 78
    int-to-float v7, v6

    .line 79
    div-float/2addr v5, v7

    .line 80
    const/high16 v7, 0x3f800000  # 1.0f

    .line 82
    invoke-static {v5, v3, v7}, La/b;->p(FFF)F

    .line 85
    move-result v5

    .line 86
    invoke-virtual {p0, v5, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getCapsuleContent(FI)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;

    .line 89
    move-result-object v5

    .line 90
    if-eqz v5, :cond_f2

    .line 92
    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 94
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V

    .line 97
    goto/16 :goto_f2

    .line 99
    :cond_62
    if-ne p1, v4, :cond_f2

    .line 101
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 103
    const/4 v6, 0x4

    .line 104
    if-eq v5, v2, :cond_ce

    .line 106
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 108
    if-lez v5, :cond_9c

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 113
    move-result v5

    .line 114
    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    .line 116
    int-to-float v7, v7

    .line 117
    sub-float/2addr v5, v7

    .line 118
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 121
    move-result v5

    .line 122
    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    .line 124
    int-to-float v7, v7

    .line 125
    cmpl-float v5, v5, v7

    .line 127
    if-lez v5, :cond_9c

    .line 129
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 131
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_96

    .line 137
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 142
    move-result v5

    .line 143
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 145
    int-to-float v6, v6

    .line 146
    sub-float/2addr v5, v6

    .line 147
    float-to-int v5, v5

    .line 148
    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    .line 150
    goto :goto_98

    .line 151
    :cond_96
    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 153
    :goto_98
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 156
    goto :goto_f2

    .line 157
    :cond_9c
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 159
    if-lez v5, :cond_f2

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 164
    move-result v5

    .line 165
    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    .line 167
    int-to-float v7, v7

    .line 168
    sub-float/2addr v5, v7

    .line 169
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 172
    move-result v5

    .line 173
    const/high16 v7, 0x40a00000  # 5.0f

    .line 175
    cmpl-float v5, v5, v7

    .line 177
    if-lez v5, :cond_f2

    .line 179
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 181
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_c8

    .line 187
    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 192
    move-result v5

    .line 193
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 195
    int-to-float v6, v6

    .line 196
    sub-float/2addr v5, v6

    .line 197
    float-to-int v5, v5

    .line 198
    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    .line 200
    goto :goto_ca

    .line 201
    :cond_c8
    iput v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 203
    :goto_ca
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 206
    goto :goto_f2

    .line 207
    :cond_ce
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showScrollerBar()V

    .line 210
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 212
    if-eq v5, v2, :cond_d7

    .line 214
    if-ne v5, v6, :cond_de

    .line 216
    :cond_d7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 219
    move-result v5

    .line 220
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->horizontalScrollTo(F)V

    .line 223
    :cond_de
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 225
    if-eq v5, v1, :cond_e4

    .line 227
    if-ne v5, v4, :cond_f2

    .line 229
    :cond_e4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 232
    move-result v5

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 236
    move-result v6

    .line 237
    invoke-direct {p0, v5, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->verticalScrollTo(FF)V

    .line 240
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->freshTagProportions()V

    .line 243
    :cond_f2
    :goto_f2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 246
    move-result v5

    .line 247
    if-eq v5, v1, :cond_fa

    .line 249
    if-ne p1, v2, :cond_107

    .line 251
    :cond_fa
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 253
    if-eq v5, v2, :cond_100

    .line 255
    if-ne v5, v4, :cond_107

    .line 257
    :cond_100
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    .line 259
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 262
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 264
    :cond_107
    if-eq p1, v1, :cond_10b

    .line 266
    if-ne p1, v2, :cond_10d

    .line 268
    :cond_10b
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    .line 270
    :cond_10d
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    .line 272
    if-eqz p1, :cond_11d

    .line 274
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    .line 276
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 283
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V

    .line 286
    :cond_11d
    return-void
.end method

.method public resetScrollerBarPosition()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    .line 7
    goto :goto_17

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 16
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    .line 23
    sub-int/2addr v0, v1

    .line 24
    :goto_17
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitX:I

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 28
    if-nez v0, :cond_49

    .line 30
    new-instance v0, Landroid/animation/ObjectAnimator;

    .line 32
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 42
    const-string v1, "FastScrollerThumbX"

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    const-wide/16 v1, 0x190

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 56
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 58
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 66
    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;

    .line 68
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    :cond_49
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 76
    const/4 v1, 0x2

    .line 77
    new-array v1, v1, [I

    .line 79
    const/4 v2, 0x0

    .line 80
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 82
    aput v3, v1, v2

    .line 84
    const/4 v2, 0x1

    .line 85
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitX:I

    .line 87
    aput v3, v1, v2

    .line 89
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 94
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    return-void
.end method

.method public setBottomMargin(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mBottomMargin:I

    .line 3
    return-void
.end method

.method public setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 5
    if-eqz v0, :cond_c

    .line 7
    if-eqz p1, :cond_c

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    .line 16
    :goto_f
    return-void
.end method

.method public setCapsuleStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/indicator/DrawView;->setStyle(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setDefaultPosition()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_20

    .line 9
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 11
    if-nez v0, :cond_f

    .line 13
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    .line 15
    goto :goto_1b

    .line 16
    :cond_f
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 23
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    .line 27
    sub-int/2addr v0, v1

    .line 28
    :goto_1b
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitX:I

    .line 30
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 32
    goto :goto_30

    .line 33
    :cond_20
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 37
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    .line 40
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    .line 44
    sub-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitY:I

    .line 47
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 49
    :goto_30
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5b

    .line 55
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 57
    if-eqz v0, :cond_49

    .line 59
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 61
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    .line 63
    sub-int/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 66
    invoke-interface {v1}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewWidth()I

    .line 69
    move-result v1

    .line 70
    sub-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 73
    goto :goto_57

    .line 74
    :cond_49
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 76
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 78
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 81
    move-result v1

    .line 82
    add-int/2addr v1, v0

    .line 83
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    .line 85
    add-int/2addr v1, v0

    .line 86
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 88
    :goto_57
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 90
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    .line 92
    :cond_5b
    return-void
.end method

.method public setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_23

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;->isShowCapsule()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;->createFastScrollerCapsule()Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 15
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setIsInRight(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->getCapsuleMarginToThumb()I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    .line 36
    :cond_23
    return-void
.end method

.method public setFastScrollerInvisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerInvisible:Z

    .line 3
    return-void
.end method

.method public setFastScrollerThumbX(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 3
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnStateChangedListener:Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;

    .line 3
    return-void
.end method

.method public setProportionTagAdapterProvider(Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    .line 5
    :cond_4
    return-void
.end method

.method public setStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setStyle(I)V

    .line 6
    return-void
.end method

.method public setTopMargin(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    .line 3
    return-void
.end method

.method public showCapsuleByAnimator()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 3
    if-eqz v0, :cond_18

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_b

    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v0, v2, :cond_b

    .line 11
    goto :goto_20

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->cancelHideCapsule()V

    .line 17
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 21
    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/DrawView;->setVisible()V

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    .line 30
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->showCapsuleByAnimator()V

    .line 33
    :goto_20
    return-void
.end method

.method public showProportionTagByAnimator()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 3
    if-eqz v0, :cond_16

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    goto :goto_1e

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelHideTagByAnimator()V

    .line 14
    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setVisible()V

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 28
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->showTagByAnimator()V

    .line 31
    :goto_1e
    return-void
.end method

.method public showScrollerBar()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 3
    if-eqz v0, :cond_16

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    goto :goto_1e

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelHideScrollerBarAnimator()V

    .line 14
    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setVisible()V

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 28
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->showScrollerBarAnimator()V

    .line 31
    :goto_1e
    return-void
.end method

.method public updateThumbPositionByDragging(II)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_8

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    :cond_8
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    .line 11
    :cond_a
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_10

    .line 14
    const/4 v3, 0x4

    .line 15
    if-ne v0, v3, :cond_12

    .line 17
    :cond_10
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 24
    move-result v0

    .line 25
    div-int/2addr v0, v1

    .line 26
    if-ge p1, v0, :cond_1c

    .line 28
    move p1, v0

    .line 29
    :cond_1c
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 31
    sub-int v3, v2, v0

    .line 33
    if-le p1, v3, :cond_24

    .line 35
    sub-int p1, v2, v0

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 39
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    .line 42
    move-result v0

    .line 43
    div-int/2addr v0, v1

    .line 44
    sub-int/2addr p1, v0

    .line 45
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 47
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 49
    sub-int/2addr p1, p2

    .line 50
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 53
    move-result p1

    .line 54
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    .line 56
    if-ge p1, v0, :cond_3c

    .line 58
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    .line 61
    :cond_3c
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    .line 63
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->changeThumbAndCapsulePositionX()V

    .line 68
    return-void
.end method

.method public updateThumbPositionByScrolling()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 9
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollOffset()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollRange()I

    .line 18
    move-result v2

    .line 19
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    .line 21
    sub-int v4, v2, v3

    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    if-lez v4, :cond_26

    .line 27
    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollbarMinimumRange:I

    .line 29
    iget v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    .line 31
    add-int/2addr v7, v8

    .line 32
    iget v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mBottomMargin:I

    .line 34
    add-int/2addr v7, v8

    .line 35
    if-lt v3, v7, :cond_26

    .line 37
    move v7, v5

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v7, v6

    .line 40
    :goto_27
    iput-boolean v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    .line 42
    iget-object v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 44
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 47
    move-result v7

    .line 48
    iget v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    .line 50
    sub-int/2addr v7, v8

    .line 51
    if-lez v7, :cond_3a

    .line 53
    iget v9, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollbarMinimumRange:I

    .line 55
    if-lt v8, v9, :cond_3a

    .line 57
    move v8, v5

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v8, v6

    .line 60
    :goto_3b
    iput-boolean v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    .line 62
    iget-boolean v9, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    .line 64
    if-nez v9, :cond_4b

    .line 66
    if-nez v8, :cond_4b

    .line 68
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    .line 70
    if-eqz v0, :cond_4a

    .line 72
    invoke-direct {p0, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 75
    :cond_4a
    return-void

    .line 76
    :cond_4b
    const/high16 v8, 0x3f800000  # 1.0f

    .line 78
    if-eqz v9, :cond_6e

    .line 80
    int-to-float v9, v1

    .line 81
    mul-float/2addr v9, v8

    .line 82
    int-to-float v4, v4

    .line 83
    div-float/2addr v9, v4

    .line 84
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    .line 87
    move-result-object v4

    .line 88
    aget v10, v4, v5

    .line 90
    aget v4, v4, v6

    .line 92
    sub-int v11, v10, v4

    .line 94
    int-to-float v12, v4

    .line 95
    int-to-float v11, v11

    .line 96
    mul-float/2addr v11, v9

    .line 97
    add-float/2addr v11, v12

    .line 98
    float-to-int v9, v11

    .line 99
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    move-result v4

    .line 103
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    .line 106
    move-result v4

    .line 107
    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    .line 109
    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    .line 111
    :cond_6e
    iget-boolean v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    .line 113
    if-eqz v4, :cond_88

    .line 115
    int-to-float v4, v0

    .line 116
    mul-float/2addr v4, v8

    .line 117
    int-to-float v7, v7

    .line 118
    div-float/2addr v4, v7

    .line 119
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getHorizontalRange()[I

    .line 122
    move-result-object v7

    .line 123
    aget v8, v7, v5

    .line 125
    aget v7, v7, v6

    .line 127
    sub-int/2addr v8, v7

    .line 128
    int-to-float v7, v7

    .line 129
    int-to-float v8, v8

    .line 130
    mul-float/2addr v8, v4

    .line 131
    add-float/2addr v8, v7

    .line 132
    float-to-int v4, v8

    .line 133
    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    .line 135
    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    .line 137
    :cond_88
    if-nez v0, :cond_91

    .line 139
    if-eqz v1, :cond_8d

    .line 141
    goto :goto_91

    .line 142
    :cond_8d
    invoke-direct {p0, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 145
    goto :goto_98

    .line 146
    :cond_91
    :goto_91
    mul-int/lit8 v3, v3, 0x2

    .line 148
    if-lt v2, v3, :cond_98

    .line 150
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    .line 153
    :cond_98
    :goto_98
    return-void
.end method
