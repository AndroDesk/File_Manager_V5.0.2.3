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

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const v1, 0x10100a7

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v1, v0, v2

    .line 10
    sput-object v0, Lcom/android/fileexplorer/view/indicator/FastScroller;->PRESSED_STATE_SET:[I

    .line 12
    new-array v0, v2, [I

    .line 14
    sput-object v0, Lcom/android/fileexplorer/view/indicator/FastScroller;->EMPTY_STATE_SET:[I

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 13
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [I

    .line 20
    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalRange:[I

    .line 22
    new-array v2, v1, [I

    .line 24
    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalRange:[I

    .line 26
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateY:I

    .line 28
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    .line 30
    new-array v1, v1, [F

    .line 32
    fill-array-data v1, :array_5c

    .line 35
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 41
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    .line 43
    new-instance v2, Lcom/android/fileexplorer/view/indicator/FastScroller$1;

    .line 45
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/indicator/FastScroller$1;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    .line 48
    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v2, Lcom/android/fileexplorer/view/indicator/FastScroller$2;

    .line 52
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/view/indicator/FastScroller$2;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    .line 55
    iput-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 57
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 59
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 61
    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-direct {v0, p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;

    .line 72
    invoke-direct {v0, p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V

    .line 75
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    .line 92
    return-void

    .line 93
    :array_5c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/indicator/FastScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isLayoutRTL()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1502(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateY:I

    .line 3
    return p1
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/view/indicator/FastScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/indicator/FastScroller;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/indicator/FastScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    .line 3
    return p0
.end method

.method public static synthetic access$902(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    .line 3
    return p1
.end method

.method private cancelHide()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->cancelHide()V

    .line 21
    return-void
.end method

.method private dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 8
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    .line 10
    sub-int/2addr v1, v2

    .line 11
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateY:I

    .line 13
    add-int/2addr v1, v3

    .line 14
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    .line 16
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v0, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    if-eqz v0, :cond_20

    .line 26
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 28
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackHeight:I

    .line 30
    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    :cond_20
    int-to-float v0, v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    :cond_2c
    int-to-float v0, v3

    .line 46
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    neg-int v0, v3

    .line 55
    int-to-float v0, v0

    .line 56
    neg-int v1, v1

    .line 57
    int-to-float v1, v1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 8
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    .line 10
    sub-int/2addr v1, v2

    .line 11
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    .line 13
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackWidth:I

    .line 25
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 27
    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    if-eqz v0, :cond_24

    .line 34
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 39
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isLayoutRTL()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4a

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    if-eqz v0, :cond_36

    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_36
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    .line 57
    int-to-float v1, v0

    .line 58
    int-to-float v2, v3

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 64
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    neg-int v0, v0

    .line 68
    int-to-float v0, v0

    .line 69
    neg-int v1, v3

    .line 70
    int-to-float v1, v1

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    goto :goto_69

    .line 75
    :cond_4a
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimTranslateX:I

    .line 77
    add-int/2addr v1, v0

    .line 78
    int-to-float v0, v1

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    if-eqz v0, :cond_59

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_59
    int-to-float v0, v3

    .line 91
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 96
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    neg-int v0, v1

    .line 100
    int-to-float v0, v0

    .line 101
    neg-int v1, v3

    .line 102
    int-to-float v1, v1

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    :goto_69
    return-void
.end method

.method private ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_15

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 22
    :cond_15
    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalRange:[I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalMargin:I

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v1, v0, v2

    .line 8
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 10
    sub-int/2addr v2, v1

    .line 11
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    .line 13
    sub-int/2addr v2, v1

    .line 14
    const/4 v1, 0x1

    .line 15
    aput v2, v0, v1

    .line 17
    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalRange:[I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTopMargin:I

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v1, v0, v2

    .line 8
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 10
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mBottomMargin:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    .line 15
    sub-int/2addr v1, v2

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v1, v0, v2

    .line 19
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getHorizontalRange()[I

    .line 4
    move-result-object v3

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 12
    move-result v4

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 18
    move-result v5

    .line 19
    iget v6, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 21
    move-object v0, p0

    .line 22
    move v2, p1

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/indicator/FastScroller;->scrollTo(FF[IIII)I

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_22

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 35
    :cond_22
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    .line 37
    return-void
.end method

.method private isLayoutRTL()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

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

.method private requestRedraw()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method private resetHideDelay(I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->cancelHide()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 8
    int-to-long v2, p1

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
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
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_25

    .line 5
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 7
    if-eq v2, v1, :cond_25

    .line 9
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 11
    if-ne v2, v1, :cond_15

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 15
    if-eqz v2, :cond_15

    .line 17
    sget-object v3, Lcom/android/fileexplorer/view/indicator/FastScroller;->PRESSED_STATE_SET:[I

    .line 19
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    :cond_15
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 24
    if-ne v2, v0, :cond_22

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 28
    if-eqz v2, :cond_22

    .line 30
    sget-object v3, Lcom/android/fileexplorer/view/indicator/FastScroller;->PRESSED_STATE_SET:[I

    .line 32
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 35
    :cond_22
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->cancelHide()V

    .line 38
    :cond_25
    if-nez p1, :cond_2b

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->show()V

    .line 47
    :goto_2e
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 49
    if-ne v2, v1, :cond_54

    .line 51
    if-eq p1, v1, :cond_54

    .line 53
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 55
    if-ne v2, v1, :cond_41

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 59
    if-eqz v1, :cond_41

    .line 61
    sget-object v2, Lcom/android/fileexplorer/view/indicator/FastScroller;->EMPTY_STATE_SET:[I

    .line 63
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 66
    :cond_41
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 68
    if-ne v1, v0, :cond_4e

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 72
    if-eqz v0, :cond_4e

    .line 74
    sget-object v1, Lcom/android/fileexplorer/view/indicator/FastScroller;->EMPTY_STATE_SET:[I

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 79
    :cond_4e
    const/16 v0, 0x4b0

    .line 81
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->resetHideDelay(I)V

    .line 84
    goto :goto_5b

    .line 85
    :cond_54
    if-ne p1, v0, :cond_5b

    .line 87
    const/16 v0, 0x5dc

    .line 89
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->resetHideDelay(I)V

    .line 92
    :cond_5b
    :goto_5b
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 94
    return-void
.end method

.method private setupCallbacks()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 18
    return-void
.end method

.method private updateAppearance()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    const/16 v1, 0xff

    .line 5
    if-eqz v0, :cond_25

    .line 7
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    move-result v0

    .line 13
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    .line 19
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 23
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 26
    move-result v2

    .line 27
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    if-eqz v0, :cond_3a

    .line 42
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 47
    move-result v0

    .line 48
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackWidth:I

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 61
    if-eqz v0, :cond_5d

    .line 63
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    .line 65
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 68
    move-result v0

    .line 69
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    .line 75
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    .line 77
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 79
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 82
    move-result v2

    .line 83
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 86
    move-result v0

    .line 87
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 94
    :cond_5d
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    if-eqz v0, :cond_72

    .line 98
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 103
    move-result v0

    .line 104
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackHeight:I

    .line 110
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 120
    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 123
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 126
    move-result v1

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByScrolling(II)V

    .line 130
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    .line 133
    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getVerticalRange()[I

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
    int-to-float v2, v2

    .line 16
    div-float v2, p1, v2

    .line 18
    const/4 v4, 0x0

    .line 19
    const/high16 v5, 0x3f800000  # 1.0f

    .line 21
    invoke-static {v2, v4, v5}, La/b;->p(FFF)F

    .line 24
    move-result v2

    .line 25
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 27
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->computeScrollPositionAndOffset(F)[I

    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_2e

    .line 33
    array-length v5, v4

    .line 34
    const/4 v6, 0x2

    .line 35
    if-ne v5, v6, :cond_2e

    .line 37
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 39
    aget v5, v4, v3

    .line 41
    aget v4, v4, v1

    .line 43
    invoke-virtual {v2, v5, v4}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->scrollToPositionWithOffset(II)V

    .line 46
    goto :goto_45

    .line 47
    :cond_2e
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 49
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 56
    move-result v4

    .line 57
    int-to-float v5, v4

    .line 58
    mul-float/2addr v5, v2

    .line 59
    float-to-int v2, v5

    .line 60
    sub-int/2addr v4, v1

    .line 61
    invoke-static {v2, v3, v4}, La/b;->q(III)I

    .line 64
    move-result v2

    .line 65
    iget-object v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 67
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 70
    :goto_45
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    .line 72
    const/4 v2, -0x1

    .line 73
    aget v1, v0, v1

    .line 75
    int-to-float v1, v1

    .line 76
    aget v0, v0, v3

    .line 78
    int-to-float v0, v0

    .line 79
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 82
    move-result p1

    .line 83
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 86
    move-result p1

    .line 87
    float-to-int p1, p1

    .line 88
    invoke-virtual {p0, v2, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByDragging(II)V

    .line 91
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setupCallbacks()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateThumbPositionByScrolling(II)V

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->requestRedraw()V

    .line 22
    return-void
.end method

.method public detach()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->destroyCallbacks()V

    .line 4
    return-void
.end method

.method public getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    return-object v0
.end method

.method public getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    return-object v0
.end method

.method public getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->hide(I)V

    return-void
.end method

.method public hide(I)V
    .registers 7

    .line 2
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_e

    goto :goto_33

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    .line 5
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

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_33
    return-void
.end method

.method public isDragging()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 3
    const/4 v1, 0x2

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

.method public isHidden()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 3
    if-nez v0, :cond_6

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

.method public isPointInsideHorizontalThumb(FF)Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbHeight:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    cmpl-float p2, p2, v0

    .line 9
    if-ltz p2, :cond_1b

    .line 11
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    .line 13
    int-to-float v0, p2

    .line 14
    cmpl-float v0, p1, v0

    .line 16
    if-ltz v0, :cond_1b

    .line 18
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbWidth:I

    .line 20
    add-int/2addr p2, v0

    .line 21
    int-to-float p2, p2

    .line 22
    cmpg-float p1, p1, p2

    .line 24
    if-gtz p1, :cond_1b

    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    :goto_1c
    return p1
.end method

.method public isPointInsideVerticalThumb(FF)Z
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isLayoutRTL()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    .line 9
    div-int/lit8 v0, v0, 0x2

    .line 11
    int-to-float v0, v0

    .line 12
    cmpg-float p1, p1, v0

    .line 14
    if-gtz p1, :cond_2b

    .line 16
    goto :goto_1a

    .line 17
    :cond_10
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 19
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbWidth:I

    .line 21
    sub-int/2addr v0, v1

    .line 22
    int-to-float v0, v0

    .line 23
    cmpl-float p1, p1, v0

    .line 25
    if-ltz p1, :cond_2b

    .line 27
    :goto_1a
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    .line 29
    int-to-float v0, p1

    .line 30
    cmpl-float v0, p2, v0

    .line 32
    if-ltz v0, :cond_2b

    .line 34
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbHeight:I

    .line 36
    add-int/2addr p1, v0

    .line 37
    int-to-float p1, p1

    .line 38
    cmpg-float p1, p2, p1

    .line 40
    if-gtz p1, :cond_2b

    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 p1, 0x0

    .line 45
    :goto_2c
    return p1
.end method

.method public isVisible()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    :goto_7
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    .line 1
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 3
    iget-object p3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p3

    .line 9
    if-ne p2, p3, :cond_28

    .line 11
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 13
    iget-object p3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 18
    move-result p3

    .line 19
    if-eq p2, p3, :cond_15

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    .line 24
    if-eqz p2, :cond_27

    .line 26
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    .line 28
    if-eqz p2, :cond_20

    .line 30
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 33
    :cond_20
    iget-boolean p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 35
    if-eqz p2, :cond_27

    .line 37
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    .line 40
    :cond_27
    return-void

    .line 41
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 61
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_c

    .line 8
    if-eq p1, v0, :cond_c

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne p1, v1, :cond_11

    .line 13
    :cond_c
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 16
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 18
    :cond_11
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v1, v0, :cond_a3

    .line 24
    if-nez p1, :cond_46

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideVerticalThumb(FF)Z

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3c

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 55
    move-result p1

    .line 56
    float-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 59
    goto/16 :goto_a6

    .line 61
    :cond_3c
    if-eqz p1, :cond_a6

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 66
    move-result p1

    .line 67
    float-to-int p1, p1

    .line 68
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 70
    goto :goto_a6

    .line 71
    :cond_46
    if-ne p1, v2, :cond_a6

    .line 73
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 75
    if-lez p1, :cond_72

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 80
    move-result p1

    .line 81
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 83
    int-to-float v1, v1

    .line 84
    sub-float/2addr p1, v1

    .line 85
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 88
    move-result p1

    .line 89
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    .line 91
    int-to-float v1, v1

    .line 92
    cmpl-float p1, p1, v1

    .line 94
    if-lez p1, :cond_72

    .line 96
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 101
    move-result p1

    .line 102
    float-to-int p1, p1

    .line 103
    int-to-float p1, p1

    .line 104
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    .line 106
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    .line 108
    int-to-float p2, p2

    .line 109
    sub-float/2addr p1, p2

    .line 110
    float-to-int p1, p1

    .line 111
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    .line 113
    :goto_70
    move v3, v0

    .line 114
    goto :goto_9b

    .line 115
    :cond_72
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 117
    if-lez p1, :cond_9b

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 122
    move-result p1

    .line 123
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 125
    int-to-float v1, v1

    .line 126
    sub-float/2addr p1, v1

    .line 127
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 130
    move-result p1

    .line 131
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    .line 133
    int-to-float v1, v1

    .line 134
    cmpl-float p1, p1, v1

    .line 136
    if-lez p1, :cond_9b

    .line 138
    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 143
    move-result p1

    .line 144
    float-to-int p1, p1

    .line 145
    int-to-float p1, p1

    .line 146
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    .line 148
    iget p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    .line 150
    int-to-float p2, p2

    .line 151
    sub-float/2addr p1, p2

    .line 152
    float-to-int p1, p1

    .line 153
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    .line 155
    goto :goto_70

    .line 156
    :cond_9b
    :goto_9b
    if-eqz v3, :cond_a6

    .line 158
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 160
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 163
    goto :goto_a6

    .line 164
    :cond_a3
    if-ne v1, v2, :cond_a6

    .line 166
    goto :goto_a7

    .line 167
    :cond_a6
    :goto_a6
    move v0, v3

    .line 168
    :goto_a7
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 8

    .line 1
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_d0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result p1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p1, :cond_11

    .line 14
    if-eq p1, v2, :cond_11

    .line 16
    if-ne p1, v0, :cond_16

    .line 18
    :cond_11
    const/4 v3, -0x1

    .line 19
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 21
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 23
    :cond_16
    if-nez p1, :cond_46

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideVerticalThumb(FF)Z

    .line 36
    move-result p1

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 40
    move-result v2

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3b

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 54
    move-result p1

    .line 55
    float-to-int p1, p1

    .line 56
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 58
    goto/16 :goto_d0

    .line 60
    :cond_3b
    if-eqz p1, :cond_d0

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 65
    move-result p1

    .line 66
    float-to-int p1, p1

    .line 67
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 69
    goto/16 :goto_d0

    .line 71
    :cond_46
    const/4 v3, 0x2

    .line 72
    if-ne p1, v3, :cond_bc

    .line 74
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 76
    if-eq p1, v3, :cond_a2

    .line 78
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 80
    if-lez p1, :cond_76

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 85
    move-result p1

    .line 86
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragInitX:I

    .line 88
    int-to-float v4, v4

    .line 89
    sub-float/2addr p1, v4

    .line 90
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 93
    move-result p1

    .line 94
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    .line 96
    int-to-float v4, v4

    .line 97
    cmpl-float p1, p1, v4

    .line 99
    if-lez p1, :cond_76

    .line 101
    iput v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 106
    move-result p1

    .line 107
    float-to-int p1, p1

    .line 108
    int-to-float p1, p1

    .line 109
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    .line 111
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    .line 113
    int-to-float v2, v2

    .line 114
    sub-float/2addr p1, v2

    .line 115
    float-to-int p1, p1

    .line 116
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    .line 118
    goto :goto_9e

    .line 119
    :cond_76
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 121
    if-lez p1, :cond_9e

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 126
    move-result p1

    .line 127
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragInitY:I

    .line 129
    int-to-float v2, v2

    .line 130
    sub-float/2addr p1, v2

    .line 131
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 134
    move-result p1

    .line 135
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollSlop:I

    .line 137
    int-to-float v2, v2

    .line 138
    cmpl-float p1, p1, v2

    .line 140
    if-lez p1, :cond_9e

    .line 142
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 147
    move-result p1

    .line 148
    float-to-int p1, p1

    .line 149
    int-to-float p1, p1

    .line 150
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    .line 152
    iget v2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    .line 154
    int-to-float v2, v2

    .line 155
    sub-float/2addr p1, v2

    .line 156
    float-to-int p1, p1

    .line 157
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTouchOffset:I

    .line 159
    :cond_9e
    :goto_9e
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 162
    goto :goto_d0

    .line 163
    :cond_a2
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->show()V

    .line 166
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 168
    if-ne p1, v2, :cond_b0

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 173
    move-result p1

    .line 174
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->horizontalScrollTo(F)V

    .line 177
    :cond_b0
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 179
    if-ne p1, v3, :cond_d0

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 184
    move-result p1

    .line 185
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->verticalScrollTo(F)V

    .line 188
    goto :goto_d0

    .line 189
    :cond_bc
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 192
    move-result p1

    .line 193
    if-ne p1, v2, :cond_d0

    .line 195
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 197
    if-ne p1, v3, :cond_d0

    .line 199
    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalDragY:F

    .line 202
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalDragX:F

    .line 204
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 207
    iput v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 209
    :cond_d0
    :goto_d0
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 211
    if-eqz p1, :cond_e0

    .line 213
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 215
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V

    .line 225
    :cond_e0
    return-void
.end method

.method public setBottomMargin(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mBottomMargin:I

    .line 3
    return-void
.end method

.method public setStyle(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/fileexplorer/R$styleable;->CustomFastScroll:[I

    .line 9
    const/4 v2, 0x0

    .line 10
    const v3, 0x7f0401cb

    .line 13
    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_16
    if-ge v2, v0, :cond_6c

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 28
    move-result v3

    .line 29
    packed-switch v3, :pswitch_data_74

    .line 32
    :pswitch_1f  #0x9, 0xa
    goto :goto_69

    .line 33
    :pswitch_20  #0xd
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    goto :goto_69

    .line 40
    :pswitch_27  #0xc
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 46
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 48
    goto :goto_69

    .line 49
    :pswitch_30  #0xb
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mTopMargin:I

    .line 55
    goto :goto_69

    .line 56
    :pswitch_37  #0x8
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 59
    move-result v3

    .line 60
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollbarMinimumRange:I

    .line 62
    goto :goto_69

    .line 63
    :pswitch_3e  #0x7
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v3

    .line 67
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    goto :goto_69

    .line 70
    :pswitch_45  #0x6
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 76
    iput-object v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 78
    goto :goto_69

    .line 79
    :pswitch_4e  #0x5
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 82
    move-result v3

    .line 83
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalMargin:I

    .line 85
    goto :goto_69

    .line 86
    :pswitch_55  #0x4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 89
    move-result v3

    .line 90
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbWidth:I

    .line 92
    goto :goto_69

    .line 93
    :pswitch_5c  #0x3
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    move-result v3

    .line 97
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDefaultThumbHeight:I

    .line 99
    goto :goto_69

    .line 100
    :pswitch_63  #0x2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    move-result v3

    .line 104
    iput v3, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mBottomMargin:I

    .line 106
    :goto_69
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_16

    .line 109
    :cond_6c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->updateAppearance()V

    .line 115
    return-void

    .line 116
    nop

    .line 117
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

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    goto :goto_3c

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mAnimationState:I

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Float;

    .line 29
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 32
    move-result v4

    .line 33
    aput v4, v2, v3

    .line 35
    const/high16 v3, 0x3f800000  # 1.0f

    .line 37
    aput v3, v2, v0

    .line 39
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 44
    const-wide/16 v1, 0x96

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 51
    const-wide/16 v1, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 58
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    :goto_3c
    return-void
.end method

.method public updateThumbPositionByDragging(II)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mDragState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 6
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 8
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    .line 10
    :cond_9
    const/4 p1, 0x2

    .line 11
    if-ne v0, p1, :cond_10

    .line 13
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    .line 15
    iput p2, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    .line 17
    :cond_10
    return-void
.end method

.method public updateThumbPositionByScrolling(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewHeight:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-lez v0, :cond_13

    .line 14
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollbarMinimumRange:I

    .line 16
    if-lt v1, v4, :cond_13

    .line 18
    move v1, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v3

    .line 21
    :goto_14
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 28
    move-result v1

    .line 29
    iget v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mRecyclerViewWidth:I

    .line 31
    sub-int/2addr v1, v4

    .line 32
    if-lez v1, :cond_27

    .line 34
    iget v5, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mScrollbarMinimumRange:I

    .line 36
    if-lt v4, v5, :cond_27

    .line 38
    move v4, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v4, v3

    .line 41
    :goto_28
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 43
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedVerticalScrollbar:Z

    .line 45
    if-nez v5, :cond_38

    .line 47
    if-nez v4, :cond_38

    .line 49
    iget p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 51
    if-eqz p1, :cond_37

    .line 53
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 56
    :cond_37
    return-void

    .line 57
    :cond_38
    const/high16 v4, 0x3f800000  # 1.0f

    .line 59
    if-eqz v5, :cond_50

    .line 61
    int-to-float v5, p2

    .line 62
    mul-float/2addr v5, v4

    .line 63
    int-to-float v0, v0

    .line 64
    div-float/2addr v5, v0

    .line 65
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getVerticalRange()[I

    .line 68
    move-result-object v0

    .line 69
    aget v6, v0, v2

    .line 71
    aget v0, v0, v3

    .line 73
    sub-int/2addr v6, v0

    .line 74
    int-to-float v0, v0

    .line 75
    int-to-float v6, v6

    .line 76
    mul-float/2addr v6, v5

    .line 77
    add-float/2addr v6, v0

    .line 78
    float-to-int v0, v6

    .line 79
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mVerticalThumbY:I

    .line 81
    :cond_50
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 83
    if-eqz v0, :cond_68

    .line 85
    int-to-float v0, p1

    .line 86
    mul-float/2addr v0, v4

    .line 87
    int-to-float v1, v1

    .line 88
    div-float/2addr v0, v1

    .line 89
    invoke-direct {p0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->getHorizontalRange()[I

    .line 92
    move-result-object v1

    .line 93
    aget v4, v1, v2

    .line 95
    aget v1, v1, v3

    .line 97
    sub-int/2addr v4, v1

    .line 98
    int-to-float v1, v1

    .line 99
    int-to-float v4, v4

    .line 100
    mul-float/2addr v4, v0

    .line 101
    add-float/2addr v4, v1

    .line 102
    float-to-int v0, v4

    .line 103
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mHorizontalThumbX:I

    .line 105
    :cond_68
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller;->mState:I

    .line 107
    if-eq v0, v2, :cond_75

    .line 109
    if-nez p1, :cond_75

    .line 111
    if-eqz p2, :cond_71

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 117
    goto :goto_78

    .line 118
    :cond_75
    :goto_75
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/indicator/FastScroller;->setState(I)V

    .line 121
    :goto_78
    return-void
.end method
