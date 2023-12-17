.class Lcom/android/fileexplorer/view/indicator/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;,
        Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;,
        Lcom/android/fileexplorer/view/indicator/FastScroller$AnimationState;,
        Lcom/android/fileexplorer/view/indicator/FastScroller$DragState;,
        Lcom/android/fileexplorer/view/indicator/FastScroller$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_ANIMING_IN:I = 0x1

.field private static final ANIMATION_STATE_ANIMING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x12c

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x96

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FastScroller"


# instance fields
.field private mAnimTranslateX:I

.field private mAnimTranslateY:I

.field private mAnimationState:I

.field private mBottomMargin:I

.field private mDefaultThumbHeight:I

.field private mDefaultThumbWidth:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mHorizontalDragInitX:I

.field public mHorizontalDragX:F

.field private mHorizontalMargin:I

.field private final mHorizontalRange:[I

.field private mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mHorizontalThumbHeight:I

.field private mHorizontalThumbWidth:I

.field public mHorizontalThumbX:I

.field private mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrackHeight:I

.field private mNeedDispatchFakeEvent:Z

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

.field private final mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private mScrollSlop:I

.field private mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mTopMargin:I

.field private mTouchOffset:I

.field private mVerticalDragInitY:I

.field public mVerticalDragY:F

.field private final mVerticalRange:[I

.field private mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mVerticalThumbHeight:I

.field private mVerticalThumbWidth:I

.field public mVerticalThumbY:I

.field private mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrackWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/fileexplorer/view/indicator/FastScroller;->PRESSED_STATE_SET:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/android/fileexplorer/view/indicator/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;)V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalRange:[I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateY:I

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    new-instance v2, Lcom/android/fileexplorer/view/indicator/FastScroller$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/indicator/FastScroller$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/fileexplorer/view/indicator/FastScroller$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/indicator/FastScroller$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;

    invoke-direct {v0, p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    return-void

    :array_5c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/indicator/FastScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isLayoutRTL()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateY:I

    return p1
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/view/indicator/FastScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/indicator/FastScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/indicator/FastScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    return p0
.end method

.method public static synthetic access$902(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    return p1
.end method

.method private cancelHide()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->cancelHide()V

    return-void
.end method

.method private dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateY:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackHeight:I

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_20
    int-to-float v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2c
    int-to-float v0, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v3

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_36

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_36
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    int-to-float v1, v0

    int-to-float v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_69

    :cond_4a
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_59

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_59
    int-to-float v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_69
    return-void
.end method

.method private ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_15
    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTopMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mBottomMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 9

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/indicator/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_22
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

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

.method private requestRedraw()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private resetHideDelay(I)V
    .registers 6

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->cancelHide()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

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
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_25

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-eq v2, v1, :cond_25

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    if-ne v2, v1, :cond_15

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_15

    sget-object v3, Lcom/android/fileexplorer/view/indicator/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_15
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    if-ne v2, v0, :cond_22

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_22

    sget-object v3, Lcom/android/fileexplorer/view/indicator/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_22
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->cancelHide()V

    :cond_25
    if-nez p1, :cond_2b

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    goto :goto_2e

    :cond_2b
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->show()V

    :goto_2e
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-ne v2, v1, :cond_54

    if-eq p1, v1, :cond_54

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    if-ne v2, v1, :cond_41

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_41

    sget-object v2, Lcom/android/fileexplorer/view/indicator/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_41
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    if-ne v1, v0, :cond_4e

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_4e

    sget-object v1, Lcom/android/fileexplorer/view/indicator/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4e
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->resetHideDelay(I)V

    goto :goto_5b

    :cond_54
    if-ne p1, v0, :cond_5b

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->resetHideDelay(I)V

    :cond_5b
    :goto_5b
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    return-void
.end method

.method private setupCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method private updateAppearance()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 v1, 0xff

    if-eqz v0, :cond_25

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3a

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackWidth:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5d

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5d
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_72

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_72
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByScrolling(II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 9

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, v0, v3

    sub-int/2addr v2, v4

    if-nez v2, :cond_e

    return-void

    :cond_e
    int-to-float v2, v2

    div-float v2, p1, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v2, v4, v5}, La/b;->p(FFF)F

    move-result v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollPositionAndOffset(F)[I

    move-result-object v4

    if-eqz v4, :cond_2e

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2e

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    aget v5, v4, v3

    aget v4, v4, v1

    invoke-virtual {v2, v5, v4}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->scrollToPositionWithOffset(II)V

    goto :goto_45

    :cond_2e
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v2, v5

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v4}, La/b;->q(III)I

    move-result v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_45
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    const/4 v2, -0x1

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v2, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByDragging(II)V

    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setupCallbacks()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByScrolling(II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    return-void
.end method

.method public detach()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->destroyCallbacks()V

    return-void
.end method

.method public getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->hide(I)V

    return-void
.end method

.method public hide(I)V
    .registers 7

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_e

    goto :goto_33

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_33
    return-void
.end method

.method public isDragging()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isHidden()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPointInsideHorizontalThumb(FF)Z
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1b

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    int-to-float v0, p2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1b

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public isPointInsideVerticalThumb(FF)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2b

    goto :goto_1a

    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2b

    :goto_1a
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    int-to-float v0, p1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2b

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method public isVisible()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_28

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_15

    goto :goto_28

    :cond_15
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_27

    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_20

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    :cond_20
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_27

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_27
    return-void

    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v0, :cond_c

    const/4 v1, 0x3

    if-ne p1, v1, :cond_11

    :cond_c
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    :cond_11
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v0, :cond_a3

    if-nez p1, :cond_46

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    goto/16 :goto_a6

    :cond_3c
    if-eqz p1, :cond_a6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    goto :goto_a6

    :cond_46
    if-ne p1, v2, :cond_a6

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    if-lez p1, :cond_72

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_72

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    :goto_70
    move v3, v0

    goto :goto_9b

    :cond_72
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    if-lez p1, :cond_9b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9b

    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    goto :goto_70

    :cond_9b
    :goto_9b
    if-eqz v3, :cond_a6

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    goto :goto_a6

    :cond_a3
    if-ne v1, v2, :cond_a6

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v0, v3

    :goto_a7
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 8

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_d0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_11

    if-ne p1, v0, :cond_16

    :cond_11
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    :cond_16
    if-nez p1, :cond_46

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    goto/16 :goto_d0

    :cond_3b
    if-eqz p1, :cond_d0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    goto/16 :goto_d0

    :cond_46
    const/4 v3, 0x2

    if-ne p1, v3, :cond_bc

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-eq p1, v3, :cond_a2

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    if-lez p1, :cond_76

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_76

    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    goto :goto_9e

    :cond_76
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    if-lez p1, :cond_9e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9e

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    :cond_9e
    :goto_9e
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    goto :goto_d0

    :cond_a2
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->show()V

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    if-ne p1, v2, :cond_b0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->horizontalScrollTo(F)V

    :cond_b0
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    if-ne p1, v3, :cond_d0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->verticalScrollTo(F)V

    goto :goto_d0

    :cond_bc
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_d0

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-ne p1, v3, :cond_d0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    :cond_d0
    :goto_d0
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    if-eqz p1, :cond_e0

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V

    :cond_e0
    return-void
.end method

.method public setBottomMargin(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mBottomMargin:I

    return-void
.end method

.method public setStyle(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->CustomFastScroll:[I

    const/4 v2, 0x0

    const v3, 0x7f0401cb

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_6c

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_74

    :pswitch_1f  #0x9, 0xa
    goto :goto_69

    :pswitch_20  #0xd
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_69

    :pswitch_27  #0xc
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_69

    :pswitch_30  #0xb
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTopMargin:I

    goto :goto_69

    :pswitch_37  #0x8
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollbarMinimumRange:I

    goto :goto_69

    :pswitch_3e  #0x7
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_69

    :pswitch_45  #0x6
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_69

    :pswitch_4e  #0x5
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalMargin:I

    goto :goto_69

    :pswitch_55  #0x4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    goto :goto_69

    :pswitch_5c  #0x3
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    goto :goto_69

    :pswitch_63  #0x2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mBottomMargin:I

    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_6c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateAppearance()V

    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_63  #00000002
        :pswitch_5c  #00000003
        :pswitch_55  #00000004
        :pswitch_4e  #00000005
        :pswitch_45  #00000006
        :pswitch_3e  #00000007
        :pswitch_37  #00000008
        :pswitch_1f  #00000009
        :pswitch_1f  #0000000a
        :pswitch_30  #0000000b
        :pswitch_27  #0000000c
        :pswitch_20  #0000000d
    .end packed-switch
.end method

.method public show()V
    .registers 6

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_3c

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3c
    return-void
.end method

.method public updateThumbPositionByDragging(II)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    :cond_9
    const/4 p1, 0x2

    if-ne v0, p1, :cond_10

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    :cond_10
    return-void
.end method

.method public updateThumbPositionByScrolling(II)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_13

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollbarMinimumRange:I

    if-lt v1, v4, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v1, v4

    if-lez v1, :cond_27

    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollbarMinimumRange:I

    if-lt v4, v5, :cond_27

    move v4, v2

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v5, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v5, :cond_38

    if-nez v4, :cond_38

    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-eqz p1, :cond_37

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    :cond_37
    return-void

    :cond_38
    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v5, :cond_50

    int-to-float v5, p2

    mul-float/2addr v5, v4

    int-to-float v0, v0

    div-float/2addr v5, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getVerticalRange()[I

    move-result-object v0

    aget v6, v0, v2

    aget v0, v0, v3

    sub-int/2addr v6, v0

    int-to-float v0, v0

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    :cond_50
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_68

    int-to-float v0, p1

    mul-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getHorizontalRange()[I

    move-result-object v1

    aget v4, v1, v2

    aget v1, v1, v3

    sub-int/2addr v4, v1

    int-to-float v1, v1

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    float-to-int v0, v4

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    :cond_68
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    if-eq v0, v2, :cond_75

    if-nez p1, :cond_75

    if-eqz p2, :cond_71

    goto :goto_75

    :cond_71
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    goto :goto_78

    :cond_75
    :goto_75
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    :goto_78
    return-void
.end method
