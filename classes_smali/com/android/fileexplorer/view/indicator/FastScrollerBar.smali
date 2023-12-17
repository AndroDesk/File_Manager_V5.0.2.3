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
.field private static final ANIMATION_STATE_ANIMING_IN:I

.field private static final ANIMATION_STATE_ANIMING_OUT:I

.field private static final ANIMATION_STATE_IN:I

.field private static final ANIMATION_STATE_OUT:I

.field private static final DRAG_HORIZONTAL_X:I

.field private static final DRAG_HORIZONTAL_Y:I

.field private static final DRAG_NONE:I

.field private static final DRAG_VERTICAL_X:I

.field private static final DRAG_VERTICAL_Y:I

.field private static final HIDE_DURATION_DELAY_MS:I

.field private static final PROPORTION_TAG_ANIMATION_STATE_ANIMING_IN:I

.field private static final PROPORTION_TAG_ANIMATION_STATE_ANIMING_OUT:I

.field private static final PROPORTION_TAG_ANIMATION_STATE_IN:I

.field private static final PROPORTION_TAG_ANIMATION_STATE_OUT:I

.field private static final RESET_POSITION_DURATION_MS:I

.field private static final SCROLL_SLOP:I

.field public static final STATE_DRAGGING:I

.field public static final STATE_HIDDEN:I

.field public static final STATE_PRESSED:I

.field public static final STATE_VISIBLE:I

.field private static final TAG:Ljava/lang/String; = "FastScrollerBar"

.field private static final TIME_CAPSULE_ANIMATION_STATE_ANIMING_IN:I

.field private static final TIME_CAPSULE_ANIMATION_STATE_ANIMING_OUT:I

.field private static final TIME_CAPSULE_ANIMATION_STATE_IN:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->ANIMATION_STATE_ANIMING_IN:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->ANIMATION_STATE_ANIMING_OUT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->ANIMATION_STATE_IN:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->ANIMATION_STATE_OUT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->DRAG_HORIZONTAL_X:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->DRAG_HORIZONTAL_Y:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->DRAG_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->DRAG_VERTICAL_X:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->DRAG_VERTICAL_Y:I

    const v0, 0x92a46

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->HIDE_DURATION_DELAY_MS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->PROPORTION_TAG_ANIMATION_STATE_ANIMING_IN:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->PROPORTION_TAG_ANIMATION_STATE_ANIMING_OUT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->PROPORTION_TAG_ANIMATION_STATE_IN:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->PROPORTION_TAG_ANIMATION_STATE_OUT:I

    const v0, 0x92c06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->RESET_POSITION_DURATION_MS:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->SCROLL_SLOP:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->STATE_DRAGGING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->STATE_HIDDEN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->STATE_PRESSED:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->STATE_VISIBLE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->TIME_CAPSULE_ANIMATION_STATE_ANIMING_IN:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->TIME_CAPSULE_ANIMATION_STATE_ANIMING_OUT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->TIME_CAPSULE_ANIMATION_STATE_IN:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V
    .registers 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mVerticalRange:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalRange:[I

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iput-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_48

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isLayoutRTL()Z

    move-result p2

    if-eqz p2, :cond_45

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    goto :goto_48

    :cond_45
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    :cond_48
    :goto_48
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getThumbMargin()I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollbarMinimumRange:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mLayoutOrientation:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerInvisible:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method private dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalRange:[I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mHorizontalRange:[I

    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mVerticalRange:[I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mBottomMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mVerticalRange:[I

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 9

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getHorizontalRange()[I

    move-result-object v3

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_22
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    return-void
.end method

.method private isLayoutLandScape()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private isLayoutRTL()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private isNeedDrawCapsule()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private recordFastScrollerBarClick()V
    .registers 1

    return-void
.end method

.method private requestRedraw()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 9

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_a

    return v1

    :cond_a
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_17

    if-ltz p5, :cond_17

    return p1

    :cond_17
    return v1
.end method

.method private setState(I)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/view/indicator/FastScrollerBar$State;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-eq v1, v0, :cond_1a

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->stretchArrowAnimator()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelHideScrollerBarAnimator()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showCapsuleByAnimator()V

    :cond_1a
    if-nez p1, :cond_51

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    const/4 v2, 0x3

    if-eq v1, v0, :cond_23

    if-ne v1, v2, :cond_28

    :cond_23
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->retractArrowAnimator()V

    :cond_28
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-eqz v1, :cond_32

    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideScrollerBar(I)V

    goto :goto_35

    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    :goto_35
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-eq v1, v2, :cond_3b

    if-ne v1, v0, :cond_54

    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideCapsuleByAnimator()V

    :cond_42
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-ne v0, v2, :cond_54

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->resetScrollerBarPosition()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->hideProportionTagByAnimator()V

    goto :goto_54

    :cond_51
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showScrollerBar()V

    :cond_54
    :goto_54
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnStateChangedListener:Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;

    if-eqz v0, :cond_5d

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;->onStateChanged(I)V

    :cond_5d
    return-void
.end method

.method private setupCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method private verticalScrollTo(FF)V
    .registers 11

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, v0, v3

    sub-int/2addr v2, v4

    if-nez v2, :cond_e

    return-void

    :cond_e
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v4, v5, v6}, La/b;->p(FFF)F

    move-result v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollPositionAndOffset(F)[I

    move-result-object v5

    if-eqz v5, :cond_33

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    aget v7, v5, v3

    aget v5, v5, v1

    invoke-virtual {v6, v7, v5}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->scrollToPositionWithOffset(II)V

    goto :goto_4a

    :cond_33
    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    int-to-float v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    sub-int/2addr v5, v1

    invoke-static {v6, v3, v5}, La/b;->q(III)I

    move-result v5

    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_4a
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    float-to-int p1, p1

    aget v1, v0, v1

    int-to-float v1, v1

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->updateThumbPositionByDragging(II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-virtual {p0, v4, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getCapsuleContent(FI)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;

    move-result-object p1

    if-eqz p1, :cond_74

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V

    :cond_74
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setupCallbacks()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->updateThumbPositionByScrolling()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    return-void
.end method

.method public changeThumbAndCapsulePositionX()V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isLayoutLandScape()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_17

    :cond_c
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    div-int/lit8 v1, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_17
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    if-ge v2, v0, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setIsInRight(Z)V

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    if-le v0, v1, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->showCapsuleByAnimator()V

    goto :goto_5b

    :cond_37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v0, v1, :cond_5b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setIsInRight(Z)V

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    if-ge v0, v1, :cond_5b

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->showCapsuleByAnimator()V

    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    if-eqz v0, :cond_74

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-interface {v1}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    goto :goto_82

    :cond_74
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    :cond_82
    :goto_82
    return-void
.end method

.method public detach()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->destroyCallbacks()V

    return-void
.end method

.method public freshTagProportions()V
    .registers 6

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int/2addr v1, v0

    if-nez v1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->isShowProportionTag()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->createTagAdapter()Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    invoke-interface {v3}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->isProportionTagChanged()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    if-eqz v3, :cond_57

    :cond_2c
    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    if-nez v3, :cond_3a

    new-instance v3, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-direct {v3, v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v3, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;)V

    :cond_3a
    const-string v0, "FastScrollerBar"

    const-string v3, "start calculate"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    invoke-interface {v3}, Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;->getProportionTagModel()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->refreshViews(Ljava/util/List;II)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    if-eqz v0, :cond_57

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    :cond_57
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showProportionTagByAnimator()V

    :cond_5a
    return-void
.end method

.method public getCapsuleContent(FI)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    if-nez v1, :cond_9

    goto :goto_3c

    :cond_9
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;->getDataPositionByDrag(IIFI)I

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    invoke-interface {p2, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;->getCapsuleContent(I)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;

    move-result-object p1

    return-object p1

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideCapsule()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->cancelHideCapsule()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->hideCapsule()V

    :cond_f
    return-void
.end method

.method public hideCapsuleByAnimator()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_1b

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->cancelShowCapsule()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/DrawView;->setVisible()V

    :cond_13
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->hideCapsuleByAnimator()V

    :goto_1b
    return-void
.end method

.method public hideProportionTag()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelHideTagByAnimator()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setInvisible()V

    :cond_f
    return-void
.end method

.method public hideProportionTagByAnimator()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_1b

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelShowTagByAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setVisible()V

    :cond_13
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->hideTagByAnimator()V

    :goto_1b
    return-void
.end method

.method public hideScrollerBar()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setInvisible()V

    return-void
.end method

.method public hideScrollerBar(I)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_1c

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelShowScrollerBarAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setVisible()V

    :cond_13
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->hideScrollerBarAnimator(J)V

    :goto_1c
    return-void
.end method

.method public isDragging()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isFastScrollerPressed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    return v0
.end method

.method public isPointInsideFastScrollerThumb(FF)Z
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_28

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_28

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    int-to-float v0, p1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method

.method public onAnimatorFadeInEnd()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    return-void
.end method

.method public onAnimatorFadeOutEnd()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    return-void
.end method

.method public onAnimatorUpdate()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mLayoutOrientation:I

    if-ne p3, p2, :cond_9d

    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    if-eqz p3, :cond_9d

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    if-nez v0, :cond_21

    goto/16 :goto_9d

    :cond_21
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 v0, 0x1

    if-eq p3, p2, :cond_37

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setDefaultPosition()V

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    :cond_37
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_4b

    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewChanged:Z

    :cond_4b
    iget-object p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    if-eqz p2, :cond_5c

    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    if-eqz p3, :cond_5c

    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isLayoutRTL()Z

    move-result v0

    invoke-virtual {p2, p3, v0, p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->draw(IZLandroid/graphics/Canvas;)V

    :cond_5c
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result p2

    if-eqz p2, :cond_7b

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    if-eqz p2, :cond_7b

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/indicator/DrawView;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7b
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    if-eqz p2, :cond_9c

    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    if-nez p2, :cond_87

    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_9c

    :cond_87
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget p3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9c
    return-void

    :cond_9d
    :goto_9d
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mLayoutOrientation:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setDefaultPosition()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v2, :cond_d

    if-ne p1, v1, :cond_14

    :cond_d
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    :cond_14
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    if-eqz v3, :cond_8e

    if-nez p1, :cond_37

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isPointInsideFastScrollerThumb(FF)Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    goto :goto_5e

    :cond_37
    const/4 v3, 0x2

    if-ne p1, v3, :cond_85

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    if-lez p1, :cond_60

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_60

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_5c

    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    goto :goto_5e

    :cond_5c
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    :goto_5e
    move v0, v2

    goto :goto_85

    :cond_60
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    if-lez p1, :cond_85

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40a00000  # 5.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_85

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_81

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    goto :goto_5e

    :cond_81
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    goto :goto_5e

    :cond_85
    :goto_85
    if-eqz v0, :cond_89

    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    :cond_89
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-ne p1, v1, :cond_8e

    move v0, v2

    :cond_8e
    return v0
.end method

.method public onProportionTagAnimatorFadeInEnd()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    return-void
.end method

.method public onProportionTagAnimatorFadeOutEnd()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    return-void
.end method

.method public onProportionTagAnimatorUpdate()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    return-void
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTimeCapsuleAnimatorFadeInEnd()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    return-void
.end method

.method public onTimeCapsuleAnimatorFadeOutEnd()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    return-void
.end method

.method public onTimeCapsuleAnimatorUpdate()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_d

    if-eq p1, v1, :cond_d

    if-ne p1, v2, :cond_14

    :cond_d
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p1, :cond_62

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isPointInsideFastScrollerThumb(FF)Z

    move-result v5

    if-eqz v5, :cond_f2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->recordFastScrollerBarClick()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    move-result-object v5

    aget v6, v5, v1

    aget v5, v5, v0

    sub-int/2addr v6, v5

    if-eqz v6, :cond_f2

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    int-to-float v7, v6

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-static {v5, v3, v7}, La/b;->p(FFF)F

    move-result v5

    invoke-virtual {p0, v5, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getCapsuleContent(FI)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;

    move-result-object v5

    if-eqz v5, :cond_f2

    iget-object v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V

    goto/16 :goto_f2

    :cond_62
    if-ne p1, v4, :cond_f2

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    const/4 v6, 0x4

    if-eq v5, v2, :cond_ce

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    if-lez v5, :cond_9c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitX:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9c

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_96

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    goto :goto_98

    :cond_96
    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    :goto_98
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    goto :goto_f2

    :cond_9c
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    if-lez v5, :cond_f2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragInitY:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x40a00000  # 5.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_f2

    iget-object v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_c8

    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOffsetToThumbTop:I

    goto :goto_ca

    :cond_c8
    iput v6, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    :goto_ca
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    goto :goto_f2

    :cond_ce
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->showScrollerBar()V

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    if-eq v5, v2, :cond_d7

    if-ne v5, v6, :cond_de

    :cond_d7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->horizontalScrollTo(F)V

    :cond_de
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    if-eq v5, v1, :cond_e4

    if-ne v5, v4, :cond_f2

    :cond_e4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->verticalScrollTo(FF)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->freshTagProportions()V

    :cond_f2
    :goto_f2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v1, :cond_fa

    if-ne p1, v2, :cond_107

    :cond_fa
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-eq v5, v2, :cond_100

    if-ne v5, v4, :cond_107

    :cond_100
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerDragX:F

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    :cond_107
    if-eq p1, v1, :cond_10b

    if-ne p1, v2, :cond_10d

    :cond_10b
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerPressed:Z

    :cond_10d
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    if-eqz p1, :cond_11d

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDispatchFakeEvent:Z

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V

    :cond_11d
    return-void
.end method

.method public resetScrollerBarPosition()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    goto :goto_17

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    sub-int/2addr v0, v1

    :goto_17
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitX:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_49

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    const-string v1, "FastScrollerThumbX"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_49
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitX:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mResetPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setBottomMargin(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mBottomMargin:I

    return-void
.end method

.method public setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mCapsuleCalculator:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    goto :goto_f

    :cond_c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    :goto_f
    return-void
.end method

.method public setCapsuleStyle(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/indicator/DrawView;->setStyle(I)V

    :cond_7
    return-void
.end method

.method public setDefaultPosition()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    goto :goto_1b

    :cond_f
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    sub-int/2addr v0, v1

    :goto_1b
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitX:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    goto :goto_30

    :cond_20
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbInitY:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    :goto_30
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->isNeedDrawCapsule()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-interface {v1}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    goto :goto_57

    :cond_49
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    :goto_57
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    :cond_5b
    return-void
.end method

.method public setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V
    .registers 3

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;->isShowCapsule()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;->createFastScrollerCapsule()Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsInRight:Z

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setIsInRight(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->getCapsuleMarginToThumb()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleMargin:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedDrawCapsule:Z

    :cond_23
    return-void
.end method

.method public setFastScrollerInvisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mIsFastScrollerInvisible:Z

    return-void
.end method

.method public setFastScrollerThumbX(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mOnStateChangedListener:Lcom/android/fileexplorer/view/indicator/FastScrollerBar$OnStateChangedListener;

    return-void
.end method

.method public setProportionTagAdapterProvider(Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTagAdapterProvider:Lcom/android/fileexplorer/view/indicator/ProportionTagAdapterProvider;

    :cond_4
    return-void
.end method

.method public setStyle(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setStyle(I)V

    return-void
.end method

.method public setTopMargin(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    return-void
.end method

.method public showCapsuleByAnimator()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    goto :goto_20

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->cancelHideCapsule()V

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/indicator/DrawView;->setVisible()V

    goto :goto_20

    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTimeCapsuleAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerCapsule:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->showCapsuleByAnimator()V

    :goto_20
    return-void
.end method

.method public showProportionTagByAnimator()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    if-eqz v0, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_1e

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelHideTagByAnimator()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->setVisible()V

    goto :goto_1e

    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mProportionTagListWrapper:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->showTagByAnimator()V

    :goto_1e
    return-void
.end method

.method public showScrollerBar()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    if-eqz v0, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_1e

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->cancelHideScrollerBarAnimator()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->setVisible()V

    goto :goto_1e

    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->showScrollerBarAnimator()V

    :goto_1e
    return-void
.end method

.method public updateThumbPositionByDragging(II)V
    .registers 7

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mDragState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_a

    :cond_8
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    :cond_a
    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    const/4 v3, 0x4

    if-ne v0, v3, :cond_12

    :cond_10
    iput-boolean v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v0

    div-int/2addr v0, v1

    if-ge p1, v0, :cond_1c

    move p1, v0

    :cond_1c
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    sub-int v3, v2, v0

    if-le p1, v3, :cond_24

    sub-int p1, v2, v0

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumb:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->getViewWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollSlop:I

    if-ge p1, v0, :cond_3c

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->requestRedraw()V

    :cond_3c
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->changeThumbAndCapsulePositionX()V

    return-void
.end method

.method public updateThumbPositionByScrolling()V
    .registers 14

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollOffset()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollRange()I

    move-result v2

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewHeight:I

    sub-int v4, v2, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_26

    iget v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollbarMinimumRange:I

    iget v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mTopMargin:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mBottomMargin:I

    add-int/2addr v7, v8

    if-lt v3, v7, :cond_26

    move v7, v5

    goto :goto_27

    :cond_26
    move v7, v6

    :goto_27
    iput-boolean v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    iget-object v7, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v7

    iget v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mRecyclerViewWidth:I

    sub-int/2addr v7, v8

    if-lez v7, :cond_3a

    iget v9, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mScrollbarMinimumRange:I

    if-lt v8, v9, :cond_3a

    move v8, v5

    goto :goto_3b

    :cond_3a
    move v8, v6

    :goto_3b
    iput-boolean v8, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    iget-boolean v9, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedVerticalScrollbar:Z

    if-nez v9, :cond_4b

    if-nez v8, :cond_4b

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mState:I

    if-eqz v0, :cond_4a

    invoke-direct {p0, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    :cond_4a
    return-void

    :cond_4b
    const/high16 v8, 0x3f800000  # 1.0f

    if-eqz v9, :cond_6e

    int-to-float v9, v1

    mul-float/2addr v9, v8

    int-to-float v4, v4

    div-float/2addr v9, v4

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getVerticalRange()[I

    move-result-object v4

    aget v10, v4, v5

    aget v4, v4, v6

    sub-int v11, v10, v4

    int-to-float v12, v4

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v11, v12

    float-to-int v9, v11

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbY:I

    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleY:I

    :cond_6e
    iget-boolean v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mNeedHorizontalScrollbar:Z

    if-eqz v4, :cond_88

    int-to-float v4, v0

    mul-float/2addr v4, v8

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->getHorizontalRange()[I

    move-result-object v7

    aget v8, v7, v5

    aget v7, v7, v6

    sub-int/2addr v8, v7

    int-to-float v7, v7

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v7

    float-to-int v4, v8

    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastScrollerThumbX:I

    iput v4, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->mFastTimeCapsuleX:I

    :cond_88
    if-nez v0, :cond_91

    if-eqz v1, :cond_8d

    goto :goto_91

    :cond_8d
    invoke-direct {p0, v6}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    goto :goto_98

    :cond_91
    :goto_91
    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_98

    invoke-direct {p0, v5}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->setState(I)V

    :cond_98
    :goto_98
    return-void
.end method
