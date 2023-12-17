.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lm0/a0;
.implements Lm0/q;
.implements Lm0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$j;,
        Landroidx/recyclerview/widget/RecyclerView$l;,
        Landroidx/recyclerview/widget/RecyclerView$m;,
        Landroidx/recyclerview/widget/RecyclerView$q;,
        Landroidx/recyclerview/widget/RecyclerView$y;,
        Landroidx/recyclerview/widget/RecyclerView$SavedState;,
        Landroidx/recyclerview/widget/RecyclerView$h;,
        Landroidx/recyclerview/widget/RecyclerView$x;,
        Landroidx/recyclerview/widget/RecyclerView$i;,
        Landroidx/recyclerview/widget/RecyclerView$o;,
        Landroidx/recyclerview/widget/RecyclerView$b0;,
        Landroidx/recyclerview/widget/RecyclerView$p;,
        Landroidx/recyclerview/widget/RecyclerView$v;,
        Landroidx/recyclerview/widget/RecyclerView$s;,
        Landroidx/recyclerview/widget/RecyclerView$r;,
        Landroidx/recyclerview/widget/RecyclerView$n;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager;,
        Landroidx/recyclerview/widget/RecyclerView$Adapter;,
        Landroidx/recyclerview/widget/RecyclerView$z;,
        Landroidx/recyclerview/widget/RecyclerView$u;,
        Landroidx/recyclerview/widget/RecyclerView$t;,
        Landroidx/recyclerview/widget/RecyclerView$k;,
        Landroidx/recyclerview/widget/RecyclerView$w;,
        Landroidx/recyclerview/widget/RecyclerView$a0;
    }
.end annotation


# static fields
.field public static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field public static final ALLOW_THREAD_GAP_WORK:Z

.field public static final DEBUG:Z = false

.field public static final DEFAULT_ORIENTATION:I = 0x1

.field public static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field public static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field public static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field public static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field public static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field public static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field public static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final UNDEFINED_DURATION:I = -0x80000000

.field public static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field public static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field public mAccessibilityDelegate:Landroidx/recyclerview/widget/r;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mAdapterHelper:Landroidx/recyclerview/widget/a;

.field public mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

.field public mChildHelper:Landroidx/recyclerview/widget/b;

.field public mClipToPadding:Z

.field public mDataSetHasChangedAfterLayout:Z

.field public mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

.field public mEnableFastScroller:Z

.field public mFirstLayoutComplete:Z

.field public mGapWorker:Landroidx/recyclerview/widget/e;

.field public mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

.field public mIsAttached:Z

.field public mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

.field private mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field public final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$n;",
            ">;"
        }
    .end annotation
.end field

.field public mItemsAddedOrRemoved:Z

.field public mItemsChanged:Z

.field private mLastAutoMeasureNonExactMeasuredHeight:I

.field private mLastAutoMeasureNonExactMeasuredWidth:I

.field private mLastAutoMeasureSkippedDueToExact:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field public mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLayoutOrScrollCounter:I

.field public mLayoutSuppressed:Z

.field public mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$w;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$p;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$q;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$r;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field public mPostedAnimatorRunner:Z

.field public mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

.field private mPreserveFocusAfterLayout:Z

.field public final mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

.field public mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$v;

.field public final mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field public final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Lm0/r;

.field public final mState:Landroidx/recyclerview/widget/RecyclerView$y;

.field public final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field public final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

.field private final mViewInfoProcessCallback:Landroidx/recyclerview/widget/z$b;

.field public final mViewInfoStore:Landroidx/recyclerview/widget/z;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    const v2, 0x1010436

    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 10
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 12
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 14
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 16
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 18
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 20
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 22
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 24
    const/4 v1, 0x4

    .line 25
    new-array v1, v1, [Ljava/lang/Class;

    .line 27
    const-class v2, Landroid/content/Context;

    .line 29
    aput-object v2, v1, v3

    .line 31
    const-class v2, Landroid/util/AttributeSet;

    .line 33
    aput-object v2, v1, v0

    .line 35
    const/4 v0, 0x2

    .line 36
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 38
    aput-object v2, v1, v0

    .line 40
    const/4 v0, 0x3

    .line 41
    aput-object v2, v1, v0

    .line 43
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 45
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$c;

    .line 47
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    .line 50
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lb1/a;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 18

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/z;

    invoke-direct {v0}, Landroidx/recyclerview/widget/z;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 14
    iput v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 15
    iput-boolean v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 16
    iput-boolean v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 17
    iput v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 18
    iput v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$k;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 20
    new-instance v0, Landroidx/recyclerview/widget/c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/c;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 21
    iput v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v11, -0x1

    .line 22
    iput v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v0, 0x1

    .line 23
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 24
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v12, 0x1

    .line 25
    iput-boolean v12, v6, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 26
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 27
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_86

    new-instance v0, Landroidx/recyclerview/widget/e$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/e$b;-><init>()V

    goto :goto_87

    :cond_86
    const/4 v0, 0x0

    :goto_87
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 28
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>()V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 29
    iput-boolean v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 30
    iput-boolean v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 31
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

    .line 32
    iput-boolean v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 33
    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v1, v0, [I

    .line 34
    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    new-array v1, v0, [I

    .line 35
    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    new-array v1, v0, [I

    .line 36
    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 38
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 39
    iput v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 40
    iput v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 41
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$d;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/z$b;

    .line 42
    invoke-virtual {p0, v12}, Landroid/view/View;->setScrollContainer(Z)V

    .line 43
    invoke-virtual {p0, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 44
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_e4

    .line 47
    sget-object v4, Lm0/j0;->a:Ljava/lang/reflect/Method;

    .line 48
    invoke-static {v1}, Lm0/j0$a;->a(Landroid/view/ViewConfiguration;)F

    move-result v4

    goto :goto_e8

    .line 49
    :cond_e4
    invoke-static {v1, p1}, Lm0/j0;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v4

    .line 50
    :goto_e8
    iput v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    if-lt v2, v3, :cond_f1

    .line 51
    invoke-static {v1}, Lm0/j0$a;->b(Landroid/view/ViewConfiguration;)F

    move-result v2

    goto :goto_f5

    .line 52
    :cond_f1
    invoke-static {v1, p1}, Lm0/j0;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    .line 53
    :goto_f5
    iput v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 54
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 55
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-ne v1, v0, :cond_10b

    move v0, v12

    goto :goto_10c

    :cond_10b
    move v0, v10

    :goto_10c
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 57
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->setListener(Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->initAutofill()V

    .line 61
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 62
    invoke-static {p0}, Lm0/g0$d;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_12a

    .line 63
    invoke-static {p0, v12}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 64
    :cond_12a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    new-instance v0, Landroidx/recyclerview/widget/r;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r;)V

    .line 67
    sget-object v2, Lb1/d;->RecyclerView:[I

    invoke-virtual {p1, v8, v2, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move/from16 v5, p3

    .line 68
    invoke-static/range {v0 .. v5}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 69
    sget v0, Lb1/d;->RecyclerView_layoutManager:I

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    sget v0, Lb1/d;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v13, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v11, :cond_163

    const/high16 v0, 0x40000

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 72
    :cond_163
    sget v0, Lb1/d;->RecyclerView_android_clipToPadding:I

    invoke-virtual {v13, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 73
    sget v0, Lb1/d;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v13, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    if-eqz v0, :cond_194

    .line 74
    sget v0, Lb1/d;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 75
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 76
    sget v1, Lb1/d;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 77
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    sget v3, Lb1/d;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 79
    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 80
    sget v4, Lb1/d;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 81
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 82
    invoke-virtual {p0, v0, v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_194
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 84
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 85
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, v8, v2, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v4, v11

    move/from16 v5, p3

    .line 86
    invoke-static/range {v0 .. v5}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 87
    invoke-virtual {v11, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 88
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 4
    return-void
.end method

.method private addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, p0, :cond_b

    .line 10
    move v1, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->l(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 25
    move-result p1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eqz p1, :cond_26

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v3, v1, v2}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 38
    goto :goto_44

    .line 39
    :cond_26
    if-nez v1, :cond_2e

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 43
    invoke-virtual {p1, v0, v3, v2}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;IZ)V

    .line 46
    goto :goto_44

    .line 47
    :cond_2e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 49
    iget-object v1, p1, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 51
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 53
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 58
    move-result v1

    .line 59
    if-ltz v1, :cond_45

    .line 61
    iget-object v2, p1, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 63
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->h(I)V

    .line 66
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/b;->i(Landroid/view/View;)V

    .line 69
    :goto_44
    return-void

    .line 70
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v2, "view is not a child, cannot hide "

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p1
.end method

.method private animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;ZZ)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 5
    if-eqz p5, :cond_9

    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 10
    :cond_9
    if-eq p1, p2, :cond_1f

    .line 12
    if-eqz p6, :cond_10

    .line 14
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 17
    :cond_10
    iput-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 22
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 24
    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->l(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 27
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 30
    iput-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 32
    :cond_1f
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 34
    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2a

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 43
    :cond_2a
    return-void
.end method

.method private cancelScroll()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 8
    return-void
.end method

.method public static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    :goto_a
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1f

    .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    if-ne v0, v2, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Landroid/view/View;

    .line 25
    if-eqz v2, :cond_1d

    .line 27
    check-cast v0, Landroid/view/View;

    .line 29
    goto :goto_a

    .line 30
    :cond_1d
    move-object v0, v1

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 34
    :cond_21
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 1
    const-string v0, ": Could not instantiate the LayoutManager: "

    .line 3
    if-eqz p2, :cond_11d

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_11d

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    :try_start_12
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_21

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 32
    move-result-object v1

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 37
    move-result-object v1

    .line 38
    :goto_25
    const/4 v2, 0x0

    .line 39
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 42
    move-result-object v1

    .line 43
    const-class v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 48
    move-result-object v1
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_30} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_30} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_30} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_30} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_30} :catch_86

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    :try_start_32
    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x4

    .line 58
    new-array v6, v6, [Ljava/lang/Object;

    .line 60
    aput-object p1, v6, v2

    .line 62
    aput-object p3, v6, v4

    .line 64
    const/4 p1, 0x2

    .line 65
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p4

    .line 69
    aput-object p4, v6, p1

    .line 71
    const/4 p1, 0x3

    .line 72
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p4

    .line 76
    aput-object p4, v6, p1
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_4d} :catch_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_4d} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_4d} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_32 .. :try_end_4d} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_4d} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_4d} :catch_86

    .line 78
    move-object v3, v6

    .line 79
    goto :goto_56

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    :try_start_50
    new-array p4, v2, [Ljava/lang/Class;

    .line 83
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 86
    move-result-object v5
    :try_end_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_56} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_56} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_56} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_50 .. :try_end_56} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_56} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_56} :catch_86

    .line 87
    :goto_56
    :try_start_56
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 90
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 96
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    goto/16 :goto_11d

    .line 101
    :catch_64
    move-exception p4

    .line 102
    invoke-virtual {p4, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 107
    new-instance p5, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ": Error creating LayoutManager "

    .line 121
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p5

    .line 131
    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    throw p1
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_86} :catch_fe
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_56 .. :try_end_86} :catch_e1
    .catch Ljava/lang/InstantiationException; {:try_start_56 .. :try_end_86} :catch_c4
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_86} :catch_a5
    .catch Ljava/lang/ClassCastException; {:try_start_56 .. :try_end_86} :catch_86

    .line 135
    :catch_86
    move-exception p1

    .line 136
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 138
    new-instance p5, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string p3, ": Class is not a LayoutManager "

    .line 152
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    throw p4

    .line 166
    :catch_a5
    move-exception p1

    .line 167
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 169
    new-instance p5, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 177
    move-result-object p3

    .line 178
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string p3, ": Cannot access non-public constructor "

    .line 183
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 193
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    throw p4

    .line 197
    :catch_c4
    move-exception p1

    .line 198
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 200
    new-instance p5, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p2

    .line 222
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    throw p4

    .line 226
    :catch_e1
    move-exception p1

    .line 227
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 229
    new-instance p5, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 237
    move-result-object p3

    .line 238
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object p2

    .line 251
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    throw p4

    .line 255
    :catch_fe
    move-exception p1

    .line 256
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 258
    new-instance p5, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 266
    move-result-object p3

    .line 267
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string p3, ": Unable to find LayoutManager "

    .line 272
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object p2

    .line 282
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    throw p4

    .line 286
    :cond_11d
    :goto_11d
    return-void
.end method

.method private didChildRangeChange(II)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, p1, :cond_11

    .line 14
    aget p1, v0, v3

    .line 16
    if-eq p1, p2, :cond_12

    .line 18
    :cond_11
    move v1, v3

    .line 19
    :cond_12
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 6
    if-eqz v0, :cond_1c

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1c

    .line 14
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 17
    move-result-object v1

    .line 18
    const/16 v2, 0x800

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 23
    invoke-static {v1, v0}, Ln0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 26
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 29
    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$y;->a(I)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 22
    iget-object v3, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 24
    invoke-virtual {v3}, Landroidx/collection/f;->clear()V

    .line 27
    iget-object v0, v0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 29
    invoke-virtual {v0}, Landroidx/collection/d;->a()V

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    .line 41
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 43
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 45
    if-eqz v3, :cond_34

    .line 47
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 49
    if-eqz v3, :cond_34

    .line 51
    move v3, v1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v3, v2

    .line 54
    :goto_35
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z

    .line 56
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 58
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 60
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 62
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 64
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 66
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 69
    move-result v3

    .line 70
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 74
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 79
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 81
    if-eqz v0, :cond_d3

    .line 83
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 85
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 88
    move-result v0

    .line 89
    move v3, v2

    .line 90
    :goto_59
    if-ge v3, v0, :cond_d3

    .line 92
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 94
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_d0

    .line 108
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_7a

    .line 114
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 116
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_7a

    .line 122
    goto :goto_d0

    .line 123
    :cond_7a
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 125
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 127
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$l;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 130
    move-result v7

    .line 131
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->getUnmodifiedPayloads()Ljava/util/List;

    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v5, v6, v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$l;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 138
    move-result-object v5

    .line 139
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 141
    iget-object v7, v6, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 143
    invoke-virtual {v7, v4}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Landroidx/recyclerview/widget/z$a;

    .line 149
    if-nez v7, :cond_9f

    .line 151
    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    .line 154
    move-result-object v7

    .line 155
    iget-object v6, v6, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 157
    invoke-virtual {v6, v4, v7}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_9f
    iput-object v5, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 162
    iget v5, v7, Landroidx/recyclerview/widget/z$a;->a:I

    .line 164
    or-int/lit8 v5, v5, 0x4

    .line 166
    iput v5, v7, Landroidx/recyclerview/widget/z$a;->a:I

    .line 168
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 170
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z

    .line 172
    if-eqz v5, :cond_d0

    .line 174
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->isUpdated()Z

    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_d0

    .line 180
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_d0

    .line 186
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 189
    move-result v5

    .line 190
    if-nez v5, :cond_d0

    .line 192
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 195
    move-result v5

    .line 196
    if-nez v5, :cond_d0

    .line 198
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$b0;)J

    .line 201
    move-result-wide v5

    .line 202
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 204
    iget-object v7, v7, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 206
    invoke-virtual {v7, v5, v6, v4}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 209
    :cond_d0
    :goto_d0
    add-int/lit8 v3, v3, 0x1

    .line 211
    goto :goto_59

    .line 212
    :cond_d3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 214
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 216
    const/4 v3, 0x2

    .line 217
    if-eqz v0, :cond_162

    .line 219
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 222
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 224
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 226
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 228
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 230
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 232
    invoke-virtual {v5, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 235
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 237
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 239
    move v0, v2

    .line 240
    :goto_ef
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 242
    invoke-virtual {v4}, Landroidx/recyclerview/widget/b;->e()I

    .line 245
    move-result v4

    .line 246
    if-ge v0, v4, :cond_15e

    .line 248
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 250
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 253
    move-result-object v4

    .line 254
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_108

    .line 264
    goto :goto_15b

    .line 265
    :cond_108
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 267
    iget-object v5, v5, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 269
    invoke-virtual {v5, v4}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Landroidx/recyclerview/widget/z$a;

    .line 275
    if-eqz v5, :cond_11c

    .line 277
    iget v5, v5, Landroidx/recyclerview/widget/z$a;->a:I

    .line 279
    and-int/lit8 v5, v5, 0x4

    .line 281
    if-eqz v5, :cond_11c

    .line 283
    move v5, v1

    .line 284
    goto :goto_11d

    .line 285
    :cond_11c
    move v5, v2

    .line 286
    :goto_11d
    if-nez v5, :cond_15b

    .line 288
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$l;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 291
    move-result v5

    .line 292
    const/16 v6, 0x2000

    .line 294
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    .line 297
    move-result v6

    .line 298
    if-nez v6, :cond_12d

    .line 300
    or-int/lit16 v5, v5, 0x1000

    .line 302
    :cond_12d
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 304
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 306
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->getUnmodifiedPayloads()Ljava/util/List;

    .line 309
    move-result-object v9

    .line 310
    invoke-virtual {v7, v8, v4, v5, v9}, Landroidx/recyclerview/widget/RecyclerView$l;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 313
    move-result-object v5

    .line 314
    if-eqz v6, :cond_13f

    .line 316
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 319
    goto :goto_15b

    .line 320
    :cond_13f
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 322
    iget-object v7, v6, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 324
    invoke-virtual {v7, v4}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-result-object v7

    .line 328
    check-cast v7, Landroidx/recyclerview/widget/z$a;

    .line 330
    if-nez v7, :cond_154

    .line 332
    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    .line 335
    move-result-object v7

    .line 336
    iget-object v6, v6, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 338
    invoke-virtual {v6, v4, v7}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_154
    iget v4, v7, Landroidx/recyclerview/widget/z$a;->a:I

    .line 343
    or-int/2addr v4, v3

    .line 344
    iput v4, v7, Landroidx/recyclerview/widget/z$a;->a:I

    .line 346
    iput-object v5, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 348
    :cond_15b
    :goto_15b
    add-int/lit8 v0, v0, 0x1

    .line 350
    goto :goto_ef

    .line 351
    :cond_15e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 354
    goto :goto_165

    .line 355
    :cond_162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 358
    :goto_165
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 361
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 364
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 366
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 368
    return-void
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$y;->a(I)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->c()V

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 25
    move-result v1

    .line 26
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->c:I

    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 35
    if-eqz v0, :cond_3a

    .line 37
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3a

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 47
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    .line 49
    if-eqz v0, :cond_37

    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 53
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 56
    :cond_37
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 59
    :cond_3a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 61
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 63
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 65
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 67
    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 70
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 72
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 74
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 76
    if-eqz v2, :cond_53

    .line 78
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 80
    if-eqz v2, :cond_53

    .line 82
    const/4 v2, 0x1

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v2, v1

    .line 85
    :goto_54
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 87
    const/4 v2, 0x4

    .line 88
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 93
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 96
    return-void
.end method

.method private dispatchLayoutStep3()V
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$y;->a(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 15
    const/4 v2, 0x1

    .line 16
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 18
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_185

    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 28
    move-result v0

    .line 29
    sub-int/2addr v0, v2

    .line 30
    :goto_1d
    const/4 v4, 0x0

    .line 31
    if-ltz v0, :cond_aa

    .line 33
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 35
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 38
    move-result-object v5

    .line 39
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_32

    .line 49
    goto/16 :goto_a6

    .line 51
    :cond_32
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$b0;)J

    .line 54
    move-result-wide v5

    .line 55
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 57
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 59
    invoke-virtual {v7, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$l;->recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 62
    move-result-object v7

    .line 63
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 65
    iget-object v9, v9, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 67
    invoke-virtual {v9, v5, v6, v4}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 73
    if-eqz v4, :cond_a1

    .line 75
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 78
    move-result v9

    .line 79
    if-nez v9, :cond_a1

    .line 81
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 83
    iget-object v9, v9, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 85
    invoke-virtual {v9, v4}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Landroidx/recyclerview/widget/z$a;

    .line 91
    if-eqz v9, :cond_63

    .line 93
    iget v9, v9, Landroidx/recyclerview/widget/z$a;->a:I

    .line 95
    and-int/2addr v9, v2

    .line 96
    if-eqz v9, :cond_63

    .line 98
    move v11, v2

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v11, v3

    .line 101
    :goto_64
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 103
    iget-object v9, v9, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 105
    invoke-virtual {v9, v8}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v9

    .line 109
    check-cast v9, Landroidx/recyclerview/widget/z$a;

    .line 111
    if-eqz v9, :cond_77

    .line 113
    iget v9, v9, Landroidx/recyclerview/widget/z$a;->a:I

    .line 115
    and-int/2addr v9, v2

    .line 116
    if-eqz v9, :cond_77

    .line 118
    move v12, v2

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v12, v3

    .line 121
    :goto_78
    if-eqz v11, :cond_82

    .line 123
    if-ne v4, v8, :cond_82

    .line 125
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 127
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/z;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 130
    goto :goto_a6

    .line 131
    :cond_82
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 133
    invoke-virtual {v9, v4, v1}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 136
    move-result-object v9

    .line 137
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 139
    invoke-virtual {v10, v8, v7}, Landroidx/recyclerview/widget/z;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 142
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 144
    const/16 v10, 0x8

    .line 146
    invoke-virtual {v7, v8, v10}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 149
    move-result-object v10

    .line 150
    if-nez v9, :cond_9b

    .line 152
    invoke-direct {p0, v5, v6, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 155
    goto :goto_a6

    .line 156
    :cond_9b
    move-object v6, p0

    .line 157
    move-object v7, v4

    .line 158
    invoke-direct/range {v6 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;ZZ)V

    .line 161
    goto :goto_a6

    .line 162
    :cond_a1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 164
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/z;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 167
    :goto_a6
    add-int/lit8 v0, v0, -0x1

    .line 169
    goto/16 :goto_1d

    .line 171
    :cond_aa
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 173
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/z$b;

    .line 175
    iget-object v5, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 177
    invoke-virtual {v5}, Landroidx/collection/f;->size()I

    .line 180
    move-result v5

    .line 181
    :goto_b4
    add-int/lit8 v5, v5, -0x1

    .line 183
    if-ltz v5, :cond_185

    .line 185
    iget-object v6, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 187
    invoke-virtual {v6, v5}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 193
    iget-object v7, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 195
    invoke-virtual {v7, v5}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 198
    move-result-object v7

    .line 199
    check-cast v7, Landroidx/recyclerview/widget/z$a;

    .line 201
    iget v8, v7, Landroidx/recyclerview/widget/z$a;->a:I

    .line 203
    and-int/lit8 v9, v8, 0x3

    .line 205
    const/4 v10, 0x3

    .line 206
    if-ne v9, v10, :cond_df

    .line 208
    move-object v8, v1

    .line 209
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 211
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 215
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 217
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 219
    invoke-virtual {v9, v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 222
    goto/16 :goto_178

    .line 224
    :cond_df
    and-int/lit8 v9, v8, 0x1

    .line 226
    if-eqz v9, :cond_10a

    .line 228
    iget-object v8, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 230
    if-nez v8, :cond_f7

    .line 232
    move-object v8, v1

    .line 233
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 235
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 237
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 239
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 241
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 243
    invoke-virtual {v9, v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 246
    goto/16 :goto_178

    .line 248
    :cond_f7
    iget-object v9, v7, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 250
    move-object v10, v1

    .line 251
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 253
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 255
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 257
    invoke-virtual {v11, v6}, Landroidx/recyclerview/widget/RecyclerView$u;->l(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 260
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    invoke-virtual {v10, v6, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 265
    goto/16 :goto_178

    .line 267
    :cond_10a
    and-int/lit8 v9, v8, 0xe

    .line 269
    const/16 v10, 0xe

    .line 271
    if-ne v9, v10, :cond_11d

    .line 273
    iget-object v8, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 275
    iget-object v9, v7, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 277
    move-object v10, v1

    .line 278
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 280
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    invoke-virtual {v10, v6, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 285
    goto :goto_178

    .line 286
    :cond_11d
    and-int/lit8 v9, v8, 0xc

    .line 288
    const/16 v10, 0xc

    .line 290
    if-ne v9, v10, :cond_152

    .line 292
    iget-object v8, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 294
    iget-object v9, v7, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 296
    move-object v10, v1

    .line 297
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 299
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 305
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 307
    iget-boolean v12, v11, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 309
    if-eqz v12, :cond_144

    .line 311
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 313
    invoke-virtual {v11, v6, v6, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$l;->animateChange(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z

    .line 316
    move-result v6

    .line 317
    if-eqz v6, :cond_178

    .line 319
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 321
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 324
    goto :goto_178

    .line 325
    :cond_144
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 327
    invoke-virtual {v11, v6, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$l;->animatePersistence(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z

    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_178

    .line 333
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 335
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 338
    goto :goto_178

    .line 339
    :cond_152
    and-int/lit8 v9, v8, 0x4

    .line 341
    if-eqz v9, :cond_168

    .line 343
    iget-object v8, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 345
    move-object v9, v1

    .line 346
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 348
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 350
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 352
    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/RecyclerView$u;->l(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 355
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 357
    invoke-virtual {v9, v6, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 360
    goto :goto_178

    .line 361
    :cond_168
    and-int/lit8 v8, v8, 0x8

    .line 363
    if-eqz v8, :cond_178

    .line 365
    iget-object v8, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 367
    iget-object v9, v7, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 369
    move-object v10, v1

    .line 370
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$d;

    .line 372
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 374
    invoke-virtual {v10, v6, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 377
    :cond_178
    :goto_178
    iput v3, v7, Landroidx/recyclerview/widget/z$a;->a:I

    .line 379
    iput-object v4, v7, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 381
    iput-object v4, v7, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 383
    sget-object v6, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    .line 385
    invoke-virtual {v6, v7}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 388
    goto/16 :goto_b4

    .line 390
    :cond_185
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 392
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 394
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 397
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 399
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 401
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->b:I

    .line 403
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 405
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 407
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 409
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 411
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 413
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 415
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 417
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 419
    if-eqz v0, :cond_1a7

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    :cond_1a7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 426
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 428
    if-eqz v1, :cond_1b6

    .line 430
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 432
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 434
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 436
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->m()V

    .line 439
    :cond_1b6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 441
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 443
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 446
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 449
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 452
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 454
    iget-object v1, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 456
    invoke-virtual {v1}, Landroidx/collection/f;->clear()V

    .line 459
    iget-object v0, v0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 461
    invoke-virtual {v0}, Landroidx/collection/d;->a()V

    .line 464
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 466
    aget v1, v0, v3

    .line 468
    aget v0, v0, v2

    .line 470
    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_1de

    .line 476
    invoke-virtual {p0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 479
    :cond_1de
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    .line 482
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    .line 485
    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 3
    if-nez v0, :cond_11

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x3

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq p1, v0, :cond_1e

    .line 29
    if-ne p1, v1, :cond_21

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 34
    :cond_21
    return v1
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v3, v1, :cond_26

    .line 15
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$r;

    .line 23
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_23

    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v0, v5, :cond_23

    .line 32
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_c

    .line 39
    :cond_26
    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_10

    .line 11
    const/4 v0, -0x1

    .line 12
    aput v0, p1, v2

    .line 14
    aput v0, p1, v1

    .line 16
    return-void

    .line 17
    :cond_10
    const v3, 0x7fffffff

    .line 20
    const/high16 v4, -0x80000000

    .line 22
    move v5, v2

    .line 23
    :goto_16
    if-ge v5, v0, :cond_36

    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 27
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_29

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 45
    move-result v6

    .line 46
    if-ge v6, v3, :cond_30

    .line 48
    move v3, v6

    .line 49
    :cond_30
    if-le v6, v4, :cond_33

    .line 51
    move v4, v6

    .line 52
    :cond_33
    :goto_33
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_16

    .line 55
    :cond_36
    aput v3, p1, v2

    .line 57
    aput v4, p1, v1

    .line 59
    return-void
.end method

.method public static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    return-object p0

    .line 14
    :cond_d
    check-cast p0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v0, :cond_24

    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_21

    .line 33
    return-object v3

    .line 34
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->l:I

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 13
    move-result v0

    .line 14
    move v2, v1

    .line 15
    :goto_e
    if-ge v2, v0, :cond_25

    .line 17
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_17

    .line 23
    goto :goto_25

    .line 24
    :cond_17
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_22

    .line 32
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 34
    return-object v0

    .line 35
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_e

    .line 38
    :cond_25
    :goto_25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 44
    :goto_2b
    const/4 v1, 0x0

    .line 45
    if-ltz v0, :cond_43

    .line 47
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_35

    .line 53
    return-object v1

    .line 54
    :cond_35
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_40

    .line 62
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 64
    return-object v0

    .line 65
    :cond_40
    add-int/lit8 v0, v0, -0x1

    .line 67
    goto :goto_2b

    .line 68
    :cond_43
    return-object v1
.end method

.method public static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 1

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 11
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 13
    return-object p0
.end method

.method public static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 12
    move-result v2

    .line 13
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    sub-int/2addr v2, v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 22
    move-result v3

    .line 23
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 25
    sub-int/2addr v3, v4

    .line 26
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    sub-int/2addr v3, v4

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 32
    move-result v4

    .line 33
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 35
    add-int/2addr v4, v5

    .line 36
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 38
    add-int/2addr v4, v5

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 42
    move-result p0

    .line 43
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 45
    add-int/2addr p0, v1

    .line 46
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    add-int/2addr p0, v0

    .line 49
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_26

    .line 11
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 13
    if-eqz v1, :cond_26

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_26

    .line 21
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v1, v2, :cond_4

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    move-result v0

    .line 38
    goto :goto_4

    .line 39
    :cond_26
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x2e

    .line 8
    if-ne v0, v1, :cond_1d

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1d
    const-string p1, "."

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_26

    .line 38
    return-object p2

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method private getScrollingChildHelper()Lm0/r;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Lm0/r;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lm0/r;

    .line 7
    invoke-direct {v0, p0}, Lm0/r;-><init>(Landroid/view/View;)V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Lm0/r;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Lm0/r;

    .line 14
    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_67

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    move-result-object v2

    .line 20
    if-ne v2, p3, :cond_16

    .line 22
    goto :goto_64

    .line 23
    :cond_16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$b0;)J

    .line 26
    move-result-wide v3

    .line 27
    cmp-long v3, v3, p1

    .line 29
    if-nez v3, :cond_64

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    const-string p2, " \n View Holder 2:"

    .line 35
    if-eqz p1, :cond_47

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_47

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    new-instance p4, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v0, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    .line 52
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {p0, p4}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    new-instance p4, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v0, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    .line 81
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p0, p4}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_7

    .line 104
    :cond_67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string p2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    const-string p2, " cannot be found but it is necessary for "

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    const-string p2, "RecyclerView"

    .line 138
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method private hasUpdatedView()Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_28

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_25

    .line 23
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1d

    .line 29
    goto :goto_25

    .line 30
    :cond_1d
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isUpdated()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_25

    .line 36
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_8

    .line 41
    :cond_28
    return v1
.end method

.method private initAutofill()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v1, 0x1a

    .line 7
    if-lt v0, v1, :cond_d

    .line 9
    invoke-static {p0}, Lm0/g0$l;->b(Landroid/view/View;)I

    .line 12
    move-result v2

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-nez v2, :cond_17

    .line 17
    const/16 v2, 0x8

    .line 19
    if-lt v0, v1, :cond_17

    .line 21
    invoke-static {p0, v2}, Lm0/g0$l;->l(Landroid/view/View;I)V

    .line 24
    :cond_17
    return-void
.end method

.method private initChildrenHelper()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/b;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 5
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 13
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_d9

    .line 4
    if-eq p2, p0, :cond_d9

    .line 6
    if-ne p2, p1, :cond_9

    .line 8
    goto/16 :goto_d9

    .line 10
    :cond_9
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_10

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v1, 0x1

    .line 18
    if-nez p1, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v4

    .line 38
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v4

    .line 51
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 59
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 69
    move-result p1

    .line 70
    const/4 p2, -0x1

    .line 71
    if-ne p1, v1, :cond_4a

    .line 73
    move p1, p2

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move p1, v1

    .line 76
    :goto_4b
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 78
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 80
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 82
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 84
    if-lt v3, v5, :cond_59

    .line 86
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 88
    if-gt v6, v5, :cond_61

    .line 90
    :cond_59
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 92
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 94
    if-ge v6, v7, :cond_61

    .line 96
    move v3, v1

    .line 97
    goto :goto_6e

    .line 98
    :cond_61
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 100
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 102
    if-gt v6, v7, :cond_69

    .line 104
    if-lt v3, v7, :cond_6d

    .line 106
    :cond_69
    if-le v3, v5, :cond_6d

    .line 108
    move v3, p2

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v3, v0

    .line 111
    :goto_6e
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 113
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 115
    if-lt v5, v6, :cond_78

    .line 117
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 119
    if-gt v7, v6, :cond_80

    .line 121
    :cond_78
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 123
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 125
    if-ge v7, v8, :cond_80

    .line 127
    move p2, v1

    .line 128
    goto :goto_8c

    .line 129
    :cond_80
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 133
    if-gt v2, v4, :cond_88

    .line 135
    if-lt v5, v4, :cond_8b

    .line 137
    :cond_88
    if-le v5, v6, :cond_8b

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move p2, v0

    .line 141
    :goto_8c
    if-eq p3, v1, :cond_d1

    .line 143
    const/4 v2, 0x2

    .line 144
    if-eq p3, v2, :cond_c8

    .line 146
    const/16 p1, 0x11

    .line 148
    if-eq p3, p1, :cond_c4

    .line 150
    const/16 p1, 0x21

    .line 152
    if-eq p3, p1, :cond_c0

    .line 154
    const/16 p1, 0x42

    .line 156
    if-eq p3, p1, :cond_bc

    .line 158
    const/16 p1, 0x82

    .line 160
    if-ne p3, p1, :cond_a5

    .line 162
    if-lez p2, :cond_a4

    .line 164
    move v0, v1

    .line 165
    :cond_a4
    return v0

    .line 166
    :cond_a5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const-string v0, "Invalid direction: "

    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {p0, p2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p1

    .line 189
    :cond_bc
    if-lez v3, :cond_bf

    .line 191
    move v0, v1

    .line 192
    :cond_bf
    return v0

    .line 193
    :cond_c0
    if-gez p2, :cond_c3

    .line 195
    move v0, v1

    .line 196
    :cond_c3
    return v0

    .line 197
    :cond_c4
    if-gez v3, :cond_c7

    .line 199
    move v0, v1

    .line 200
    :cond_c7
    return v0

    .line 201
    :cond_c8
    if-gtz p2, :cond_cf

    .line 203
    if-nez p2, :cond_d0

    .line 205
    mul-int/2addr v3, p1

    .line 206
    if-lez v3, :cond_d0

    .line 208
    :cond_cf
    move v0, v1

    .line 209
    :cond_d0
    return v0

    .line 210
    :cond_d1
    if-ltz p2, :cond_d8

    .line 212
    if-nez p2, :cond_d9

    .line 214
    mul-int/2addr v3, p1

    .line 215
    if-gez v3, :cond_d9

    .line 217
    :cond_d8
    move v0, v1

    .line 218
    :cond_d9
    :goto_d9
    return v0
.end method

.method private nestedScrollByInternal(IILandroid/view/MotionEvent;I)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string p1, "RecyclerView"

    .line 7
    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 15
    if-eqz v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 20
    const/4 v2, 0x0

    .line 21
    aput v2, v1, v2

    .line 23
    const/4 v3, 0x1

    .line 24
    aput v2, v1, v3

    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_28

    .line 38
    or-int/lit8 v4, v0, 0x2

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v4, v0

    .line 42
    :goto_29
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 45
    if-eqz v0, :cond_30

    .line 47
    move v6, p1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v6, v2

    .line 50
    :goto_31
    if-eqz v1, :cond_35

    .line 52
    move v7, p2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v7, v2

    .line 55
    :goto_36
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 57
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 59
    move-object v5, p0

    .line 60
    move v10, p4

    .line 61
    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4a

    .line 67
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 69
    aget v5, v4, v2

    .line 71
    sub-int/2addr p1, v5

    .line 72
    aget v3, v4, v3

    .line 74
    sub-int/2addr p2, v3

    .line 75
    :cond_4a
    if-eqz v0, :cond_4e

    .line 77
    move v0, p1

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move v0, v2

    .line 80
    :goto_4f
    if-eqz v1, :cond_52

    .line 82
    move v2, p2

    .line 83
    :cond_52
    invoke-virtual {p0, v0, v2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 86
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 88
    if-eqz p3, :cond_60

    .line 90
    if-nez p1, :cond_5d

    .line 92
    if-eqz p2, :cond_60

    .line 94
    :cond_5d
    invoke-virtual {p3, p0, p1, p2}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 97
    :cond_60
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 100
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
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
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 11
    if-ne v1, v2, :cond_2d

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x3f000000  # 0.5f

    .line 30
    add-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 39
    move-result p1

    .line 40
    add-float/2addr p1, v2

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 44
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 46
    :cond_2d
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1c

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 8
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->l(Ljava/util/ArrayList;)V

    .line 13
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->l(Ljava/util/ArrayList;)V

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 26
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 29
    :cond_1c
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_28

    .line 35
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->j()V

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->c()V

    .line 46
    :goto_2d
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 48
    const/4 v2, 0x1

    .line 49
    if-nez v0, :cond_39

    .line 51
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 53
    if-eqz v0, :cond_37

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    move v0, v1

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    :goto_39
    move v0, v2

    .line 59
    :goto_3a
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 61
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 63
    if-eqz v4, :cond_5c

    .line 65
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 67
    if-eqz v4, :cond_5c

    .line 69
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 71
    if-nez v4, :cond_50

    .line 73
    if-nez v0, :cond_50

    .line 75
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 77
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 79
    if-eqz v5, :cond_5c

    .line 81
    :cond_50
    if-eqz v4, :cond_5a

    .line 83
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 85
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_5c

    .line 91
    :cond_5a
    move v4, v2

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v4, v1

    .line 94
    :goto_5d
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 96
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 98
    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 100
    if-eqz v4, :cond_72

    .line 102
    if-eqz v0, :cond_72

    .line 104
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 106
    if-nez v0, :cond_72

    .line 108
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_72

    .line 114
    move v1, v2

    .line 115
    :cond_72
    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 117
    return-void
.end method

.method private pullGlows(FFFF)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p2, v0

    .line 4
    const/high16 v2, 0x3f800000  # 1.0f

    .line 6
    const/4 v3, 0x1

    .line 7
    if-gez v1, :cond_21

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 14
    neg-float v4, p2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v5

    .line 19
    int-to-float v5, v5

    .line 20
    div-float/2addr v4, v5

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v5

    .line 25
    int-to-float v5, v5

    .line 26
    div-float/2addr p3, v5

    .line 27
    sub-float p3, v2, p3

    .line 29
    invoke-static {v1, v4, p3}, Landroidx/core/widget/d$a;->a(Landroid/widget/EdgeEffect;FF)V

    .line 32
    :goto_1f
    move p3, v3

    .line 33
    goto :goto_3c

    .line 34
    :cond_21
    cmpl-float v1, p2, v0

    .line 36
    if-lez v1, :cond_3b

    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v4

    .line 47
    int-to-float v4, v4

    .line 48
    div-float v4, p2, v4

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v5

    .line 54
    int-to-float v5, v5

    .line 55
    div-float/2addr p3, v5

    .line 56
    invoke-static {v1, v4, p3}, Landroidx/core/widget/d$a;->a(Landroid/widget/EdgeEffect;FF)V

    .line 59
    goto :goto_1f

    .line 60
    :cond_3b
    const/4 p3, 0x0

    .line 61
    :goto_3c
    cmpg-float v1, p4, v0

    .line 63
    if-gez v1, :cond_56

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 68
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 70
    neg-float v1, p4

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 74
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    div-float/2addr v1, v2

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 80
    move-result v2

    .line 81
    int-to-float v2, v2

    .line 82
    div-float/2addr p1, v2

    .line 83
    invoke-static {p3, v1, p1}, Landroidx/core/widget/d$a;->a(Landroid/widget/EdgeEffect;FF)V

    .line 86
    goto :goto_72

    .line 87
    :cond_56
    cmpl-float v1, p4, v0

    .line 89
    if-lez v1, :cond_71

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 94
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 99
    move-result v1

    .line 100
    int-to-float v1, v1

    .line 101
    div-float v1, p4, v1

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    div-float/2addr p1, v4

    .line 109
    sub-float/2addr v2, p1

    .line 110
    invoke-static {p3, v1, v2}, Landroidx/core/widget/d$a;->a(Landroid/widget/EdgeEffect;FF)V

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move v3, p3

    .line 115
    :goto_72
    if-nez v3, :cond_7c

    .line 117
    cmpl-float p1, p2, v0

    .line 119
    if-nez p1, :cond_7c

    .line 121
    cmpl-float p1, p4, v0

    .line 123
    if-eqz p1, :cond_81

    .line 125
    :cond_7c
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 127
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 130
    :cond_81
    return-void
.end method

.method private recoverFocusFromState()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 3
    if-eqz v0, :cond_b1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    if-eqz v0, :cond_b1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_b1

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 18
    move-result v0

    .line 19
    const/high16 v1, 0x60000

    .line 21
    if-eq v0, v1, :cond_b1

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 26
    move-result v0

    .line 27
    const/high16 v1, 0x20000

    .line 29
    if-ne v0, v1, :cond_26

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_26

    .line 37
    goto/16 :goto_b1

    .line 39
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_55

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 51
    if-eqz v1, :cond_4c

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_40

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4c

    .line 65
    :cond_40
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 67
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_55

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 76
    return-void

    .line 77
    :cond_4c
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 79
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_55

    .line 85
    return-void

    .line 86
    :cond_55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 88
    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->m:J

    .line 90
    const-wide/16 v2, -0x1

    .line 92
    cmp-long v0, v0, v2

    .line 94
    const/4 v1, 0x0

    .line 95
    if-eqz v0, :cond_71

    .line 97
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 99
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_71

    .line 105
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 107
    iget-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView$y;->m:J

    .line 109
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 112
    move-result-object v0

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move-object v0, v1

    .line 115
    :goto_72
    if-eqz v0, :cond_8a

    .line 117
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 119
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 121
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_8a

    .line 127
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_87

    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 138
    goto :goto_96

    .line 139
    :cond_8a
    :goto_8a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 141
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 144
    move-result v0

    .line 145
    if-lez v0, :cond_96

    .line 147
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    .line 150
    move-result-object v1

    .line 151
    :cond_96
    :goto_96
    if-eqz v1, :cond_b1

    .line 153
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 155
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->n:I

    .line 157
    int-to-long v4, v0

    .line 158
    cmp-long v2, v4, v2

    .line 160
    if-eqz v2, :cond_ae

    .line 162
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_ae

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_ae

    .line 174
    move-object v1, v0

    .line 175
    :cond_ae
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 178
    :cond_b1
    :goto_b1
    return-void
.end method

.method private releaseGlows()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 13
    move-result v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 25
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 28
    move-result v1

    .line 29
    or-int/2addr v0, v1

    .line 30
    :cond_1d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 32
    if-eqz v1, :cond_2b

    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 39
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 42
    move-result v1

    .line 43
    or-int/2addr v0, v1

    .line 44
    :cond_2b
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 46
    if-eqz v1, :cond_39

    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 53
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 56
    move-result v1

    .line 57
    or-int/2addr v0, v1

    .line 58
    :cond_39
    if-eqz v0, :cond_40

    .line 60
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 62
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 65
    :cond_40
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .registers 14

    .line 1
    if-eqz p2, :cond_4

    .line 3
    move-object v0, p2

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    move-object v0, p1

    .line 6
    :goto_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 26
    if-eqz v1, :cond_41

    .line 28
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 30
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 32
    if-nez v1, :cond_41

    .line 34
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 40
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 42
    sub-int/2addr v2, v3

    .line 43
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 45
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 47
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 49
    add-int/2addr v2, v3

    .line 50
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 52
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 54
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 56
    sub-int/2addr v2, v3

    .line 57
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 59
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 61
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    add-int/2addr v2, v0

    .line 64
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 66
    :cond_41
    if-eqz p2, :cond_4d

    .line 68
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 78
    :cond_4d
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 80
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 82
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 84
    const/4 v1, 0x1

    .line 85
    xor-int/lit8 v9, v0, 0x1

    .line 87
    if-nez p2, :cond_5a

    .line 89
    move v10, v1

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v10, v4

    .line 92
    :goto_5b
    move-object v6, p0

    .line 93
    move-object v7, p1

    .line 94
    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 97
    return-void
.end method

.method private resetFocusInfo()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->m:J

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->l:I

    .line 10
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->n:I

    .line 12
    return-void
.end method

.method private resetScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->releaseGlows()V

    .line 15
    return-void
.end method

.method private saveFocusInfo()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_14

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object v0, v1

    .line 22
    :goto_15
    if-nez v0, :cond_18

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 28
    move-result-object v1

    .line 29
    :goto_1c
    if-nez v1, :cond_22

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    .line 34
    goto :goto_56

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 37
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_31

    .line 45
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 48
    move-result-wide v2

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const-wide/16 v2, -0x1

    .line 52
    :goto_33
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->m:J

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 56
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 58
    if-eqz v2, :cond_3d

    .line 60
    const/4 v2, -0x1

    .line 61
    goto :goto_4a

    .line 62
    :cond_3d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_46

    .line 68
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 74
    move-result v2

    .line 75
    :goto_4a
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->l:I

    .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 79
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 81
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    .line 84
    move-result v1

    .line 85
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->n:I

    .line 87
    :goto_56
    return-void
.end method

.method private setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 15
    :cond_e
    if-eqz p2, :cond_12

    .line 17
    if-eqz p3, :cond_15

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 22
    :cond_15
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 24
    iget-object v0, p3, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/a;->l(Ljava/util/ArrayList;)V

    .line 29
    iget-object v0, p3, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/a;->l(Ljava/util/ArrayList;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p3, Landroidx/recyclerview/widget/a;->f:I

    .line 37
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    if-eqz p1, :cond_32

    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 48
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 51
    :cond_32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 53
    if-eqz p1, :cond_3b

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 57
    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    :cond_3b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 64
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->b()V

    .line 67
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 70
    move-result-object p1

    .line 71
    if-eqz p3, :cond_4e

    .line 73
    iget p3, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 75
    add-int/lit8 p3, p3, -0x1

    .line 77
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 79
    :cond_4e
    if-nez p2, :cond_57

    .line 81
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 83
    if-nez p2, :cond_57

    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 88
    :cond_57
    const/4 p2, 0x1

    .line 89
    if-eqz v0, :cond_60

    .line 91
    iget p3, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 93
    add-int/2addr p3, p2

    .line 94
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 96
    goto :goto_63

    .line 97
    :cond_60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    :goto_63
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 102
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 104
    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 13
    :cond_c
    return-void
.end method


# virtual methods
.method public absorbGlows(II)V
    .registers 5

    .line 1
    if-gez p1, :cond_14

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 8
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_26

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 16
    neg-int v1, p1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 20
    goto :goto_26

    .line 21
    :cond_14
    if-lez p1, :cond_26

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 28
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 39
    :cond_26
    :goto_26
    if-gez p2, :cond_3a

    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 44
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 46
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4c

    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 54
    neg-int v1, p2

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 58
    goto :goto_4c

    .line 59
    :cond_3a
    if-lez p2, :cond_4c

    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 66
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4c

    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 77
    :cond_4c
    :goto_4c
    if-nez p1, :cond_50

    .line 79
    if-eqz p2, :cond_55

    .line 81
    :cond_50
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 83
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 86
    :cond_55
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_d

    .line 11
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 14
    :cond_d
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .registers 3

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_15
    if-gez p2, :cond_1d

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 6
    :cond_1d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7
    :goto_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    const-string v1, "\'listener\' arg cannot be null."

    .line 8
    invoke-static {v0, v1}, La/b;->m(ZLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$l;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 16
    :cond_f
    return-void
.end method

.method public animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$l;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_12

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 19
    :cond_12
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_26

    .line 7
    if-nez p1, :cond_18

    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string v0, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0

    .line 39
    :cond_26
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    if-nez p1, :cond_18

    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string v0, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0

    .line 31
    :cond_1e
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 33
    if-lez p1, :cond_38

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, ""

    .line 39
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v0, "RecyclerView"

    .line 52
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 54
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_38
    return-void
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getUnmodifiedPayloads()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;)Z

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
    const/4 p1, 0x1

    .line 19
    :goto_12
    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method

.method public clearOldPositions()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_20

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1d

    .line 27
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearOldPosition()V

    .line 30
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_8

    .line 33
    :cond_20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 35
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v2

    .line 41
    move v3, v1

    .line 42
    :goto_29
    if-ge v3, v2, :cond_39

    .line 44
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 52
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearOldPosition()V

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_29

    .line 58
    :cond_39
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v2

    .line 64
    move v3, v1

    .line 65
    :goto_40
    if-ge v3, v2, :cond_50

    .line 67
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 75
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearOldPosition()V

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto :goto_40

    .line 81
    :cond_50
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 83
    if-eqz v2, :cond_68

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v2

    .line 89
    :goto_58
    if-ge v1, v2, :cond_68

    .line 91
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 99
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearOldPosition()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_58

    .line 105
    :cond_68
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public clearOnScrollListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 20
    move-result v1

    .line 21
    :cond_14
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 20
    move-result v1

    .line 21
    :cond_14
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 20
    move-result v1

    .line 21
    :cond_14
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 20
    move-result v1

    .line 21
    :cond_14
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 20
    move-result v1

    .line 21
    :cond_14
    return v1
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 20
    move-result v1

    .line 21
    :cond_14
    return v1
.end method

.method public considerReleasingGlowsOnScroll(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_18

    .line 11
    if-lez p1, :cond_18

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 23
    move-result v0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 28
    if-eqz v1, :cond_31

    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_31

    .line 36
    if-gez p1, :cond_31

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 52
    if-eqz p1, :cond_49

    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_49

    .line 60
    if-lez p2, :cond_49

    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 76
    if-eqz p1, :cond_61

    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_61

    .line 84
    if-gez p2, :cond_61

    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_61
    if-eqz v0, :cond_68

    .line 100
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 102
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 105
    :cond_68
    return-void
.end method

.method public consumePendingUpdateOperations()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3
    const-string v1, "RV FullInvalidate"

    .line 5
    if-eqz v0, :cond_6c

    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_6c

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->g()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 23
    const/4 v2, 0x4

    .line 24
    iget v3, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 26
    and-int/2addr v2, v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v2, :cond_20

    .line 31
    move v2, v5

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v2, v4

    .line 34
    :goto_21
    if-eqz v2, :cond_5a

    .line 36
    const/16 v2, 0xb

    .line 38
    and-int/2addr v2, v3

    .line 39
    if-eqz v2, :cond_29

    .line 41
    move v4, v5

    .line 42
    :cond_29
    if-nez v4, :cond_5a

    .line 44
    sget v0, Li0/i;->a:I

    .line 46
    const-string v0, "RV PartialInvalidate"

    .line 48
    invoke-static {v0}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->j()V

    .line 62
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 64
    if-nez v0, :cond_50

    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4b

    .line 72
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 75
    goto :goto_50

    .line 76
    :cond_4b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 78
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->b()V

    .line 81
    :cond_50
    :goto_50
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 87
    invoke-static {}, Li0/i$a;->b()V

    .line 90
    goto :goto_6b

    .line 91
    :cond_5a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->g()Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_6b

    .line 97
    sget v0, Li0/i;->a:I

    .line 99
    invoke-static {v1}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 105
    invoke-static {}, Li0/i$a;->b()V

    .line 108
    :cond_6b
    :goto_6b
    return-void

    .line 109
    :cond_6c
    :goto_6c
    sget v0, Li0/i;->a:I

    .line 111
    invoke-static {v1}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 117
    invoke-static {}, Li0/i$a;->b()V

    .line 120
    return-void
.end method

.method public defaultOnMeasure(II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p0}, Lm0/g0$d;->e(Landroid/view/View;)I

    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-static {p0}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 32
    move-result v0

    .line 33
    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method

.method public dispatchChildAttached(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 19
    if-eqz v0, :cond_2a

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    :goto_1a
    if-ltz v0, :cond_2a

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 37
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    return-void
.end method

.method public dispatchChildDetached(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 19
    if-eqz v0, :cond_2a

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    :goto_1a
    if-ltz v0, :cond_2a

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 37
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    return-void
.end method

.method public dispatchLayout()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    const-string v1, "RecyclerView"

    .line 5
    if-nez v0, :cond_c

    .line 7
    const-string v0, "No adapter attached; skipping layout"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    if-nez v0, :cond_16

    .line 17
    const-string v0, "No layout manager attached; skipping layout"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 28
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_32

    .line 33
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v3

    .line 39
    if-ne v0, v3, :cond_30

    .line 41
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    move-result v3

    .line 47
    if-eq v0, v3, :cond_32

    .line 49
    :cond_30
    move v0, v2

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v0, v1

    .line 52
    :goto_33
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 54
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 56
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 58
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 60
    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 62
    if-ne v3, v2, :cond_4b

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 69
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 75
    goto :goto_89

    .line 76
    :cond_4b
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 78
    iget-object v4, v3, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_5e

    .line 86
    iget-object v3, v3, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_5e

    .line 94
    move v1, v2

    .line 95
    :cond_5e
    if-nez v1, :cond_81

    .line 97
    if-nez v0, :cond_81

    .line 99
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 101
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 104
    move-result v0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 108
    move-result v1

    .line 109
    if-ne v0, v1, :cond_81

    .line 111
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 116
    move-result v0

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    move-result v1

    .line 121
    if-eq v0, v1, :cond_7b

    .line 123
    goto :goto_81

    .line 124
    :cond_7b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 126
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 129
    goto :goto_89

    .line 130
    :cond_81
    :goto_81
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 132
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 135
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 138
    :goto_89
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 141
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lm0/r;->dispatchNestedFling(FFZ)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lm0/r;->dispatchNestedPreFling(FF)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lm0/r;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 16

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

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

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

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

.method public dispatchOnScrollStateChanged(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 20
    if-eqz v0, :cond_2b

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    :goto_1b
    if-ltz v0, :cond_2b

    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$s;

    .line 38
    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    return-void
.end method

.method public dispatchOnScrolled(II)V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    move-result v1

    .line 15
    sub-int v2, v0, p1

    .line 17
    sub-int v3, v1, p2

    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 32
    :cond_1f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 34
    if-eqz v0, :cond_39

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    move-result v0

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    :goto_29
    if-ltz v0, :cond_39

    .line 44
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$s;

    .line 52
    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 57
    goto :goto_29

    .line 58
    :cond_39
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 60
    add-int/lit8 p1, p1, -0x1

    .line 62
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 64
    return-void
.end method

.method public dispatchPendingImportantForAccessibilityChanges()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_32

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v2

    .line 25
    if-ne v2, p0, :cond_2f

    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_21

    .line 33
    goto :goto_2f

    .line 34
    :cond_21
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPendingAccessibilityState:I

    .line 36
    const/4 v3, -0x1

    .line 37
    if-eq v2, v3, :cond_2f

    .line 39
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 41
    sget-object v5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 43
    invoke-static {v4, v2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 46
    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPendingAccessibilityState:I

    .line 48
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_8

    .line 51
    :cond_32
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    if-ge v2, v0, :cond_1d

    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 24
    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v0, :cond_57

    .line 35
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_57

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    move-result v0

    .line 45
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 47
    if-eqz v3, :cond_35

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v3

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v3, v1

    .line 55
    :goto_36
    const/high16 v4, 0x43870000  # 270.0f

    .line 57
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v4

    .line 64
    neg-int v4, v4

    .line 65
    add-int/2addr v4, v3

    .line 66
    int-to-float v3, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 73
    if-eqz v3, :cond_52

    .line 75
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_52

    .line 81
    move v3, v2

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v3, v1

    .line 84
    :goto_53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v3, v1

    .line 89
    :goto_58
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 91
    if-eqz v0, :cond_88

    .line 93
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_88

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    move-result v0

    .line 103
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 105
    if-eqz v4, :cond_77

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 110
    move-result v4

    .line 111
    int-to-float v4, v4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 115
    move-result v5

    .line 116
    int-to-float v5, v5

    .line 117
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    :cond_77
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 122
    if-eqz v4, :cond_83

    .line 124
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_83

    .line 130
    move v4, v2

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    move v4, v1

    .line 133
    :goto_84
    or-int/2addr v3, v4

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 137
    :cond_88
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 139
    if-eqz v0, :cond_c0

    .line 141
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_c0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    move-result v0

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 154
    move-result v4

    .line 155
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 157
    if-eqz v5, :cond_a3

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 162
    move-result v5

    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    move v5, v1

    .line 165
    :goto_a4
    const/high16 v6, 0x42b40000  # 90.0f

    .line 167
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 170
    int-to-float v5, v5

    .line 171
    neg-int v4, v4

    .line 172
    int-to-float v4, v4

    .line 173
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 178
    if-eqz v4, :cond_bb

    .line 180
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_bb

    .line 186
    move v4, v2

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v4, v1

    .line 189
    :goto_bc
    or-int/2addr v3, v4

    .line 190
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 193
    :cond_c0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 195
    if-eqz v0, :cond_10f

    .line 197
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_10f

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 206
    move-result v0

    .line 207
    const/high16 v4, 0x43340000  # 180.0f

    .line 209
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 212
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 214
    if-eqz v4, :cond_f1

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 219
    move-result v4

    .line 220
    neg-int v4, v4

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 224
    move-result v5

    .line 225
    add-int/2addr v5, v4

    .line 226
    int-to-float v4, v5

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 230
    move-result v5

    .line 231
    neg-int v5, v5

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 235
    move-result v6

    .line 236
    add-int/2addr v6, v5

    .line 237
    int-to-float v5, v6

    .line 238
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    goto :goto_100

    .line 242
    :cond_f1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 245
    move-result v4

    .line 246
    neg-int v4, v4

    .line 247
    int-to-float v4, v4

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 251
    move-result v5

    .line 252
    neg-int v5, v5

    .line 253
    int-to-float v5, v5

    .line 254
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    :goto_100
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 259
    if-eqz v4, :cond_10b

    .line 261
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_10b

    .line 267
    move v1, v2

    .line 268
    :cond_10b
    or-int/2addr v3, v1

    .line 269
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 272
    :cond_10f
    if-nez v3, :cond_126

    .line 274
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 276
    if-eqz p1, :cond_126

    .line 278
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 283
    move-result p1

    .line 284
    if-lez p1, :cond_126

    .line 286
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 288
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning()Z

    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_126

    .line 294
    goto :goto_127

    .line 295
    :cond_126
    move v2, v3

    .line 296
    :goto_127
    if-eqz v2, :cond_12e

    .line 298
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 300
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 303
    :cond_12e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public ensureBottomGlow()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$k;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 14
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 16
    if-eqz v1, :cond_31

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 61
    :goto_3c
    return-void
.end method

.method public ensureLeftGlow()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$k;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 14
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 16
    if-eqz v1, :cond_31

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 61
    :goto_3c
    return-void
.end method

.method public ensureRightGlow()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$k;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 14
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 16
    if-eqz v1, :cond_31

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 61
    :goto_3c
    return-void
.end method

.method public ensureTopGlow()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$k;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 14
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 16
    if-eqz v1, :cond_31

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 61
    :goto_3c
    return-void
.end method

.method public exceptionLabel()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, " "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", adapter:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", layout:"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", context:"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public final fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_1b

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 10
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 15
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 24
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    :goto_1e
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_44

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 13
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 28
    move-result v4

    .line 29
    int-to-float v4, v4

    .line 30
    add-float/2addr v4, v2

    .line 31
    cmpl-float v4, p1, v4

    .line 33
    if-ltz v4, :cond_41

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 38
    move-result v4

    .line 39
    int-to-float v4, v4

    .line 40
    add-float/2addr v4, v2

    .line 41
    cmpg-float v2, p1, v4

    .line 43
    if-gtz v2, :cond_41

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 48
    move-result v2

    .line 49
    int-to-float v2, v2

    .line 50
    add-float/2addr v2, v3

    .line 51
    cmpl-float v2, p2, v2

    .line 53
    if-ltz v2, :cond_41

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    add-float/2addr v2, v3

    .line 61
    cmpg-float v2, p2, v2

    .line 63
    if-gtz v2, :cond_41

    .line 65
    return-object v1

    .line 66
    :cond_41
    add-int/lit8 v0, v0, -0x1

    .line 68
    goto :goto_8

    .line 69
    :cond_44
    const/4 p1, 0x0

    .line 70
    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-eqz v0, :cond_14

    .line 7
    if-eq v0, p0, :cond_14

    .line 9
    instance-of v1, v0, Landroid/view/View;

    .line 11
    if-eqz v1, :cond_14

    .line 13
    move-object p1, v0

    .line 14
    check-cast p1, Landroid/view/View;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    if-ne v0, p0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    :goto_18
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 12
    move-result-object p1

    .line 13
    :goto_c
    return-object p1
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v0, :cond_37

    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_34

    .line 28
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_34

    .line 34
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 37
    move-result v4

    .line 38
    if-ne v4, p1, :cond_34

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 42
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 44
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_33

    .line 50
    move-object v1, v3

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    return-object v3

    .line 53
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_d

    .line 56
    :cond_37
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3f

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_3f

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v0, :cond_3f

    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 24
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_3c

    .line 34
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_3c

    .line 40
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 43
    move-result-wide v4

    .line 44
    cmp-long v4, v4, p1

    .line 46
    if-nez v4, :cond_3c

    .line 48
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 50
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 52
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3b

    .line 58
    move-object v1, v3

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    return-object v3

    .line 61
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_13

    .line 64
    :cond_3f
    :goto_3f
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 8

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_3a

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_37

    if-eqz p2, :cond_23

    .line 5
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    if-eq v4, p1, :cond_2a

    goto :goto_37

    .line 6
    :cond_23
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2a

    goto :goto_37

    .line 7
    :cond_2a
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/b;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_36

    move-object v1, v3

    goto :goto_37

    :cond_36
    return-object v3

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3a
    return-object v1
.end method

.method public fling(II)Z
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_d

    .line 6
    const-string p1, "RecyclerView"

    .line 8
    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return v1

    .line 14
    :cond_d
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 16
    if-eqz v2, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 25
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v0, :cond_26

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 34
    move-result v3

    .line 35
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 37
    if-ge v3, v4, :cond_27

    .line 39
    :cond_26
    move p1, v1

    .line 40
    :cond_27
    if-eqz v2, :cond_31

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 45
    move-result v3

    .line 46
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 48
    if-ge v3, v4, :cond_32

    .line 50
    :cond_31
    move p2, v1

    .line 51
    :cond_32
    if-nez p1, :cond_37

    .line 53
    if-nez p2, :cond_37

    .line 55
    return v1

    .line 56
    :cond_37
    int-to-float v3, p1

    .line 57
    int-to-float v4, p2

    .line 58
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_7b

    .line 64
    const/4 v5, 0x1

    .line 65
    if-nez v0, :cond_47

    .line 67
    if-eqz v2, :cond_45

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    move v6, v1

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    :goto_47
    move v6, v5

    .line 73
    :goto_48
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 76
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 78
    if-eqz v3, :cond_56

    .line 80
    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$q;->onFling(II)Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_56

    .line 86
    return v5

    .line 87
    :cond_56
    if-eqz v6, :cond_7b

    .line 89
    if-eqz v2, :cond_5c

    .line 91
    or-int/lit8 v0, v0, 0x2

    .line 93
    :cond_5c
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 96
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 98
    neg-int v1, v0

    .line 99
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result p1

    .line 103
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 106
    move-result p1

    .line 107
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 109
    neg-int v1, v0

    .line 110
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 113
    move-result p2

    .line 114
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result p2

    .line 118
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 120
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a(II)V

    .line 123
    return v5

    .line 124
    :cond_7b
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1f

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    if-eqz v0, :cond_1f

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1f

    .line 26
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 28
    if-nez v0, :cond_1f

    .line 30
    move v0, v1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v0, v2

    .line 33
    :goto_20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v0, :cond_9b

    .line 40
    const/4 v5, 0x2

    .line 41
    if-eq p2, v5, :cond_2c

    .line 43
    if-ne p2, v1, :cond_9b

    .line 45
    :cond_2c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4a

    .line 53
    if-ne p2, v5, :cond_39

    .line 55
    const/16 v0, 0x82

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const/16 v0, 0x21

    .line 60
    :goto_3b
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 63
    move-result-object v6

    .line 64
    if-nez v6, :cond_43

    .line 66
    move v6, v1

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v6, v2

    .line 69
    :goto_44
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 71
    if-eqz v7, :cond_4b

    .line 73
    move p2, v0

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v6, v2

    .line 76
    :cond_4b
    :goto_4b
    if-nez v6, :cond_7b

    .line 78
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 80
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7b

    .line 86
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 91
    move-result v0

    .line 92
    if-ne v0, v1, :cond_5f

    .line 94
    move v0, v1

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move v0, v2

    .line 97
    :goto_60
    if-ne p2, v5, :cond_64

    .line 99
    move v5, v1

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move v5, v2

    .line 102
    :goto_65
    xor-int/2addr v0, v5

    .line 103
    if-eqz v0, :cond_6b

    .line 105
    const/16 v0, 0x42

    .line 107
    goto :goto_6d

    .line 108
    :cond_6b
    const/16 v0, 0x11

    .line 110
    :goto_6d
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 113
    move-result-object v5

    .line 114
    if-nez v5, :cond_74

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v1, v2

    .line 118
    :goto_75
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 120
    if-eqz v5, :cond_7a

    .line 122
    move p2, v0

    .line 123
    :cond_7a
    move v6, v1

    .line 124
    :cond_7b
    if-eqz v6, :cond_96

    .line 126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 129
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 132
    move-result-object v0

    .line 133
    if-nez v0, :cond_87

    .line 135
    return-object v4

    .line 136
    :cond_87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 139
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 141
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 143
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 145
    invoke-virtual {v0, p1, p2, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;

    .line 148
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 151
    :cond_96
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 154
    move-result-object v0

    .line 155
    goto :goto_bf

    .line 156
    :cond_9b
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 159
    move-result-object v1

    .line 160
    if-nez v1, :cond_be

    .line 162
    if-eqz v0, :cond_be

    .line 164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 167
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 170
    move-result-object v0

    .line 171
    if-nez v0, :cond_ad

    .line 173
    return-object v4

    .line 174
    :cond_ad
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 177
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 179
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 181
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 183
    invoke-virtual {v0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 190
    goto :goto_bf

    .line 191
    :cond_be
    move-object v0, v1

    .line 192
    :goto_bf
    if-eqz v0, :cond_d6

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_d6

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 203
    move-result-object v1

    .line 204
    if-nez v1, :cond_d2

    .line 206
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 209
    move-result-object p1

    .line 210
    return-object p1

    .line 211
    :cond_d2
    invoke-direct {p0, v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 214
    return-object p1

    .line 215
    :cond_d6
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_dd

    .line 221
    goto :goto_e1

    .line 222
    :cond_dd
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 225
    move-result-object v0

    .line 226
    :goto_e1
    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "RecyclerView has no LayoutManager"

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, v1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    return-object p1

    .line 3
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    .line 4
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    return-object p1

    .line 15
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    .line 16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-static {p0, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object v0
.end method

.method public getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 9

    .line 1
    const/16 v0, 0x20c

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_5b

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    goto :goto_5b

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 19
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 21
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_1b
    if-ge v3, v2, :cond_5a

    .line 30
    iget-object v4, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/recyclerview/widget/a$b;

    .line 38
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->a:I

    .line 40
    const/4 v6, 0x1

    .line 41
    if-eq v5, v6, :cond_50

    .line 43
    const/4 v6, 0x2

    .line 44
    if-eq v5, v6, :cond_44

    .line 46
    const/16 v6, 0x8

    .line 48
    if-eq v5, v6, :cond_32

    .line 50
    goto :goto_57

    .line 51
    :cond_32
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    .line 53
    if-ne v5, p1, :cond_39

    .line 55
    iget p1, v4, Landroidx/recyclerview/widget/a$b;->d:I

    .line 57
    goto :goto_57

    .line 58
    :cond_39
    if-ge v5, p1, :cond_3d

    .line 60
    add-int/lit8 p1, p1, -0x1

    .line 62
    :cond_3d
    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    .line 64
    if-gt v4, p1, :cond_57

    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 68
    goto :goto_57

    .line 69
    :cond_44
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    .line 71
    if-gt v5, p1, :cond_57

    .line 73
    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    .line 75
    add-int/2addr v5, v4

    .line 76
    if-le v5, p1, :cond_4e

    .line 78
    goto :goto_5b

    .line 79
    :cond_4e
    sub-int/2addr p1, v4

    .line 80
    goto :goto_57

    .line 81
    :cond_50
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    .line 83
    if-gt v5, p1, :cond_57

    .line 85
    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    .line 87
    add-int/2addr p1, v4

    .line 88
    :cond_57
    :goto_57
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_1b

    .line 91
    :cond_5a
    move v1, p1

    .line 92
    :cond_5b
    :goto_5b
    return v1
.end method

.method public getBaseline()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBaseline()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$b0;)J
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 12
    move-result-wide v0

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 16
    int-to-long v0, p1

    .line 17
    :goto_10
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 10
    move-result p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, -0x1

    .line 13
    :goto_c
    return p1
.end method

.method public getChildDrawingOrder(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;->a(II)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    const-wide/16 v1, -0x1

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_17

    .line 14
    :cond_d
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_17

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 23
    move-result-wide v1

    .line 24
    :cond_17
    :goto_17
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 10
    move-result p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, -0x1

    .line 13
    :goto_c
    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    if-ne v0, p0, :cond_9

    .line 9
    goto :goto_28

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "View "

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " is not a direct child of "

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_28
    :goto_28
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getClipToPadding()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 3
    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/r;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r;

    .line 3
    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    return-void
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$k;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 3
    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 3
    return-object v0
.end method

.method public getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 9
    if-nez v1, :cond_d

    .line 11
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 13
    return-object p1

    .line 14
    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 16
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 18
    if-eqz v1, :cond_22

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1f

    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isViewInvalid()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_22

    .line 32
    :cond_1f
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 34
    return-object p1

    .line 35
    :cond_22
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v3

    .line 47
    move v4, v2

    .line 48
    :goto_2f
    if-ge v4, v3, :cond_66

    .line 50
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 63
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 67
    invoke-virtual {v5, v6, p1, p0, v7}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 70
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 72
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 74
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 76
    add-int/2addr v5, v7

    .line 77
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 79
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 81
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 83
    add-int/2addr v5, v7

    .line 84
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 86
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 88
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 90
    add-int/2addr v5, v7

    .line 91
    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 93
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 97
    add-int/2addr v5, v6

    .line 98
    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 102
    goto :goto_2f

    .line 103
    :cond_66
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 105
    return-object v1
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 4
    move-result v0

    .line 5
    if-ltz p1, :cond_11

    .line 7
    if-ge p1, v0, :cond_11

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " is an invalid index for size "

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v1
.end method

.method public getItemDecorationCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 3
    return v0
.end method

.method public getMinFlingVelocity()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 3
    return v0
.end method

.method getNanoTime()J
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_9
    const-wide/16 v0, 0x0

    .line 12
    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$q;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 3
    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 3
    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScrollState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 3
    return v0
.end method

.method public hasFixedSize()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 3
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0}, Lm0/r;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 7
    if-nez v0, :cond_13

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->g()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method

.method public initAdapterManager()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/a;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 5
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 13
    return-void
.end method

.method public initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .registers 15

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    if-eqz p2, :cond_2d

    .line 5
    if-eqz p3, :cond_2d

    .line 7
    if-eqz p4, :cond_2d

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroidx/recyclerview/widget/d;

    .line 19
    sget v2, Lb1/b;->fastscroll_default_thickness:I

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v7

    .line 25
    sget v2, Lb1/b;->fastscroll_minimum_range:I

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v8

    .line 31
    sget v2, Lb1/b;->fastscroll_margin:I

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    move-result v9

    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    move-object v6, p4

    .line 42
    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 45
    return-void

    .line 46
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    const-string p2, "Trying to set fast scroller without both required drawables."

    .line 50
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object p2

    .line 54
    invoke-static {p0, p2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method

.method public invalidateGlows()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 4
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 10
    return-void
.end method

.method public invalidateItemDecorations()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 25
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3
    return v0
.end method

.method public isComputingLayout()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3
    if-lez v0, :cond_6

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

.method public isLayoutFrozen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final isLayoutSuppressed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public jumpToPositionForSmoothScroller(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 18
    return-void
.end method

.method public markItemDecorInsetsDirty()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_1c

    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 14
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 24
    iput-boolean v3, v4, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 31
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    :goto_24
    if-ge v1, v2, :cond_3d

    .line 39
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 47
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 55
    if-eqz v4, :cond_3a

    .line 57
    iput-boolean v3, v4, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 59
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_24

    .line 62
    :cond_3d
    return-void
.end method

.method public markKnownViewsInvalid()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    const/4 v3, 0x6

    .line 10
    if-ge v2, v0, :cond_23

    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 14
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_20

    .line 24
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_20

    .line 30
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_8

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 41
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v2

    .line 47
    :goto_2e
    if-ge v1, v2, :cond_44

    .line 49
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 57
    if-eqz v4, :cond_41

    .line 59
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$b0;->addChangePayload(Ljava/lang/Object;)V

    .line 66
    :cond_41
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_2e

    .line 69
    :cond_44
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 73
    if-eqz v1, :cond_50

    .line 75
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_53

    .line 81
    :cond_50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->f()V

    .line 84
    :cond_53
    return-void
.end method

.method public nestedScrollBy(II)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    .line 6
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_15

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_15

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    return-void
.end method

.method public offsetPositionRecordsForInsert(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_2b

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_28

    .line 23
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_28

    .line 29
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 31
    if-lt v4, p1, :cond_28

    .line 33
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 36
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 38
    const/4 v4, 0x1

    .line 39
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 41
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_8

    .line 44
    :cond_2b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 46
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v2

    .line 52
    move v3, v1

    .line 53
    :goto_34
    if-ge v3, v2, :cond_4a

    .line 55
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 63
    if-eqz v4, :cond_47

    .line 65
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 67
    if-lt v5, p1, :cond_47

    .line 69
    invoke-virtual {v4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 72
    :cond_47
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 78
    return-void
.end method

.method public offsetPositionRecordsForMove(II)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ge p1, p2, :cond_e

    .line 11
    move v3, p1

    .line 12
    move v4, p2

    .line 13
    move v5, v1

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    move v4, p1

    .line 16
    move v3, p2

    .line 17
    move v5, v2

    .line 18
    :goto_11
    const/4 v6, 0x0

    .line 19
    move v7, v6

    .line 20
    :goto_13
    if-ge v7, v0, :cond_3a

    .line 22
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 24
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 27
    move-result-object v8

    .line 28
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 31
    move-result-object v8

    .line 32
    if-eqz v8, :cond_37

    .line 34
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 36
    if-lt v9, v3, :cond_37

    .line 38
    if-le v9, v4, :cond_28

    .line 40
    goto :goto_37

    .line 41
    :cond_28
    if-ne v9, p1, :cond_30

    .line 43
    sub-int v9, p2, p1

    .line 45
    invoke-virtual {v8, v9, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 48
    goto :goto_33

    .line 49
    :cond_30
    invoke-virtual {v8, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 52
    :goto_33
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 54
    iput-boolean v2, v8, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 56
    :cond_37
    :goto_37
    add-int/lit8 v7, v7, 0x1

    .line 58
    goto :goto_13

    .line 59
    :cond_3a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 61
    if-ge p1, p2, :cond_41

    .line 63
    move v2, p1

    .line 64
    move v3, p2

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    move v3, p1

    .line 67
    move v1, v2

    .line 68
    move v2, p2

    .line 69
    :goto_44
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v4

    .line 75
    move v5, v6

    .line 76
    :goto_4b
    if-ge v5, v4, :cond_6c

    .line 78
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 86
    if-eqz v7, :cond_69

    .line 88
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 90
    if-lt v8, v2, :cond_69

    .line 92
    if-le v8, v3, :cond_5e

    .line 94
    goto :goto_69

    .line 95
    :cond_5e
    if-ne v8, p1, :cond_66

    .line 97
    sub-int v8, p2, p1

    .line 99
    invoke-virtual {v7, v8, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 102
    goto :goto_69

    .line 103
    :cond_66
    invoke-virtual {v7, v1, v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 106
    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    .line 108
    goto :goto_4b

    .line 109
    :cond_6c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 112
    return-void
.end method

.method public offsetPositionRecordsForRemove(IIZ)V
    .registers 11

    .line 1
    add-int v0, p1, p2

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->h()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_3a

    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 14
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_37

    .line 24
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_37

    .line 30
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 32
    const/4 v5, 0x1

    .line 33
    if-lt v4, v0, :cond_2b

    .line 35
    neg-int v4, p2

    .line 36
    invoke-virtual {v3, v4, p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 39
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 41
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    if-lt v4, p1, :cond_37

    .line 46
    add-int/lit8 v4, p1, -0x1

    .line 48
    neg-int v6, p2

    .line 49
    invoke-virtual {v3, v4, v6, p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->flagRemovedAndOffsetPosition(IIZ)V

    .line 52
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 54
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 56
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_9

    .line 59
    :cond_3a
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 61
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v2

    .line 67
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, -0x1

    .line 69
    if-ltz v2, :cond_64

    .line 71
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 79
    if-eqz v3, :cond_42

    .line 81
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 83
    if-lt v4, v0, :cond_59

    .line 85
    neg-int v4, p2

    .line 86
    invoke-virtual {v3, v4, p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 89
    goto :goto_42

    .line 90
    :cond_59
    if-lt v4, p1, :cond_42

    .line 92
    const/16 v4, 0x8

    .line 94
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 97
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->g(I)V

    .line 100
    goto :goto_42

    .line 101
    :cond_64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 104
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 12
    if-eqz v2, :cond_14

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v1, v0

    .line 22
    :goto_15
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 26
    if-eqz v1, :cond_1e

    .line 28
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 31
    :cond_1e
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 33
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 35
    if-eqz v0, :cond_65

    .line 37
    sget-object v0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/ThreadLocal;

    .line 39
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/recyclerview/widget/e;

    .line 45
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 47
    if-nez v1, :cond_5e

    .line 49
    new-instance v1, Landroidx/recyclerview/widget/e;

    .line 51
    invoke-direct {v1}, Landroidx/recyclerview/widget/e;-><init>()V

    .line 54
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 56
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 58
    invoke-static {p0}, Lm0/g0$e;->b(Landroid/view/View;)Landroid/view/Display;

    .line 61
    move-result-object v1

    .line 62
    const/high16 v2, 0x42700000  # 60.0f

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_52

    .line 70
    if-eqz v1, :cond_52

    .line 72
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 75
    move-result v1

    .line 76
    const/high16 v3, 0x41f00000  # 30.0f

    .line 78
    cmpl-float v3, v1, v3

    .line 80
    if-ltz v3, :cond_52

    .line 82
    move v2, v1

    .line 83
    :cond_52
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 85
    const v3, 0x4e6e6b28  # 1.0E9f

    .line 88
    div-float/2addr v3, v2

    .line 89
    float-to-long v2, v3

    .line 90
    iput-wide v2, v1, Landroidx/recyclerview/widget/e;->c:J

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 95
    :cond_5e
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 97
    iget-object v0, v0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_65
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimations()V

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 23
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 26
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    :goto_28
    sget-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    .line 43
    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_31

    .line 49
    goto :goto_28

    .line 50
    :cond_31
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 52
    if-eqz v0, :cond_41

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 56
    if-eqz v0, :cond_41

    .line 58
    iget-object v0, v0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 66
    :cond_41
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 23
    invoke-virtual {v2, p1, p0, v3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    return-void
.end method

.method public onEnterLayoutOrScroll()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 7
    return-void
.end method

.method public onExitLayoutOrScroll()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method public onExitLayoutOrScroll(Z)V
    .registers 4

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_13

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_13

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_13
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x8

    .line 18
    if-ne v0, v2, :cond_78

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    move-result v0

    .line 24
    and-int/lit8 v0, v0, 0x2

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_3e

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2c

    .line 37
    const/16 v0, 0x9

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 42
    move-result v0

    .line 43
    neg-float v0, v0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v0, v2

    .line 46
    :goto_2d
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3c

    .line 54
    const/16 v3, 0xa

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 59
    move-result v3

    .line 60
    goto :goto_64

    .line 61
    :cond_3c
    :goto_3c
    move v3, v2

    .line 62
    goto :goto_64

    .line 63
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 66
    move-result v0

    .line 67
    const/high16 v3, 0x400000

    .line 69
    and-int/2addr v0, v3

    .line 70
    if-eqz v0, :cond_62

    .line 72
    const/16 v0, 0x1a

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 77
    move-result v0

    .line 78
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 80
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_57

    .line 86
    neg-float v0, v0

    .line 87
    goto :goto_3c

    .line 88
    :cond_57
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 90
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_62

    .line 96
    move v3, v0

    .line 97
    move v0, v2

    .line 98
    goto :goto_64

    .line 99
    :cond_62
    move v0, v2

    .line 100
    move v3, v0

    .line 101
    :goto_64
    cmpl-float v4, v0, v2

    .line 103
    if-nez v4, :cond_6c

    .line 105
    cmpl-float v2, v3, v2

    .line 107
    if-eqz v2, :cond_78

    .line 109
    :cond_6c
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 111
    mul-float/2addr v3, v2

    .line 112
    float-to-int v2, v3

    .line 113
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 115
    mul-float/2addr v0, v3

    .line 116
    float-to-int v0, v0

    .line 117
    const/4 v3, 0x1

    .line 118
    invoke-direct {p0, v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    .line 121
    :cond_78
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    .line 20
    return v2

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 23
    if-nez v0, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 29
    move-result v0

    .line 30
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 32
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 35
    move-result v3

    .line 36
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    if-nez v4, :cond_2d

    .line 40
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 43
    move-result-object v4

    .line 44
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 46
    :cond_2d
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 54
    move-result v4

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 58
    move-result v5

    .line 59
    const/4 v6, 0x2

    .line 60
    const/high16 v7, 0x3f000000  # 0.5f

    .line 62
    if-eqz v4, :cond_d9

    .line 64
    if-eq v4, v2, :cond_d0

    .line 66
    if-eq v4, v6, :cond_74

    .line 68
    const/4 v0, 0x3

    .line 69
    if-eq v4, v0, :cond_6f

    .line 71
    const/4 v0, 0x5

    .line 72
    if-eq v4, v0, :cond_53

    .line 74
    const/4 v0, 0x6

    .line 75
    if-eq v4, v0, :cond_4e

    .line 77
    goto/16 :goto_117

    .line 79
    :cond_4e
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 82
    goto/16 :goto_117

    .line 84
    :cond_53
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 87
    move-result v0

    .line 88
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 90
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    move-result v0

    .line 94
    add-float/2addr v0, v7

    .line 95
    float-to-int v0, v0

    .line 96
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 98
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 100
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 103
    move-result p1

    .line 104
    add-float/2addr p1, v7

    .line 105
    float-to-int p1, p1

    .line 106
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 108
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 110
    goto/16 :goto_117

    .line 112
    :cond_6f
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    .line 115
    goto/16 :goto_117

    .line 117
    :cond_74
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 119
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 122
    move-result v4

    .line 123
    if-gez v4, :cond_96

    .line 125
    const-string p1, "Error processing scroll; pointer index for id "

    .line 127
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    move-result-object p1

    .line 131
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    const-string v0, "RecyclerView"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 151
    :cond_96
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 154
    move-result v5

    .line 155
    add-float/2addr v5, v7

    .line 156
    float-to-int v5, v5

    .line 157
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 160
    move-result p1

    .line 161
    add-float/2addr p1, v7

    .line 162
    float-to-int p1, p1

    .line 163
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 165
    if-eq v4, v2, :cond_117

    .line 167
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 169
    sub-int v4, v5, v4

    .line 171
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 173
    sub-int v6, p1, v6

    .line 175
    if-eqz v0, :cond_bc

    .line 177
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 180
    move-result v0

    .line 181
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 183
    if-le v0, v4, :cond_bc

    .line 185
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 187
    move v0, v2

    .line 188
    goto :goto_bd

    .line 189
    :cond_bc
    move v0, v1

    .line 190
    :goto_bd
    if-eqz v3, :cond_ca

    .line 192
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 195
    move-result v3

    .line 196
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 198
    if-le v3, v4, :cond_ca

    .line 200
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 202
    move v0, v2

    .line 203
    :cond_ca
    if-eqz v0, :cond_117

    .line 205
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 208
    goto :goto_117

    .line 209
    :cond_d0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 211
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 214
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 217
    goto :goto_117

    .line 218
    :cond_d9
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 220
    if-eqz v4, :cond_df

    .line 222
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 224
    :cond_df
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 227
    move-result v4

    .line 228
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 233
    move-result v4

    .line 234
    add-float/2addr v4, v7

    .line 235
    float-to-int v4, v4

    .line 236
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 238
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 243
    move-result p1

    .line 244
    add-float/2addr p1, v7

    .line 245
    float-to-int p1, p1

    .line 246
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 248
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 250
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 252
    if-ne p1, v6, :cond_10a

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 257
    move-result-object p1

    .line 258
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 261
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 264
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 267
    :cond_10a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 269
    aput v1, p1, v2

    .line 271
    aput v1, p1, v1

    .line 273
    if-eqz v3, :cond_114

    .line 275
    or-int/lit8 v0, v0, 0x2

    .line 277
    :cond_114
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 280
    :cond_117
    :goto_117
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 282
    if-ne p1, v2, :cond_11c

    .line 284
    move v1, v2

    .line 285
    :cond_11c
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    sget p1, Li0/i;->a:I

    .line 3
    const-string p1, "RV OnLayout"

    .line 5
    invoke-static {p1}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 11
    invoke-static {}, Li0/i$a;->b()V

    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 17
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_82

    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v0

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 29
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 31
    invoke-virtual {v4, v5, v6, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    .line 34
    const/high16 v4, 0x40000000  # 2.0f

    .line 36
    if-ne v0, v4, :cond_28

    .line 38
    if-ne v3, v4, :cond_28

    .line 40
    move v2, v1

    .line 41
    :cond_28
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 43
    if-nez v2, :cond_81

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    if-nez v0, :cond_31

    .line 49
    goto :goto_81

    .line 50
    :cond_31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 52
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 54
    if-ne v0, v1, :cond_3a

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 59
    :cond_3a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 61
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 66
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 73
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 76
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 78
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_74

    .line 84
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 89
    move-result v2

    .line 90
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    move-result v3

    .line 98
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 101
    move-result v3

    .line 102
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 105
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 107
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 109
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 114
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 117
    :cond_74
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 120
    move-result p1

    .line 121
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 126
    move-result p1

    .line 127
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 129
    goto :goto_ee

    .line 130
    :cond_81
    :goto_81
    return-void

    .line 131
    :cond_82
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 133
    if-eqz v0, :cond_90

    .line 135
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 137
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 139
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 141
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    .line 144
    return-void

    .line 145
    :cond_90
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 147
    if-eqz v0, :cond_b8

    .line 149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 155
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 161
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 163
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 165
    if-eqz v3, :cond_a9

    .line 167
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 169
    goto :goto_b2

    .line 170
    :cond_a9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 172
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->c()V

    .line 175
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 177
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 179
    :goto_b2
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 181
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 184
    goto :goto_ca

    .line 185
    :cond_b8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 187
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 189
    if-eqz v0, :cond_ca

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 194
    move-result p1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 198
    move-result p2

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 202
    return-void

    .line 203
    :cond_ca
    :goto_ca
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 205
    if-eqz v0, :cond_d7

    .line 207
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 209
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 212
    move-result v0

    .line 213
    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 215
    goto :goto_db

    .line 216
    :cond_d7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 218
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 220
    :goto_db
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 223
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 225
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 227
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 229
    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    .line 232
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 235
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 237
    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 239
    :goto_ee
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 13
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 12
    if-eqz v1, :cond_12

    .line 14
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    .line 16
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    .line 18
    goto :goto_20

    .line 19
    :cond_12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    if-eqz v1, :cond_1d

    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    .line 33
    :goto_20
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onScrolled(II)V
    .registers 3

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    if-ne p1, p3, :cond_7

    .line 6
    if-eq p2, p4, :cond_a

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 11
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 7
    const/4 v8, 0x0

    .line 8
    if-nez v0, :cond_1db

    .line 10
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 12
    if-eqz v0, :cond_f

    .line 14
    goto/16 :goto_1db

    .line 16
    :cond_f
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    .line 26
    return v9

    .line 27
    :cond_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    if-nez v0, :cond_1f

    .line 31
    return v8

    .line 32
    :cond_1f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 35
    move-result v10

    .line 36
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 41
    move-result v11

    .line 42
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 44
    if-nez v0, :cond_33

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 52
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 55
    move-result v0

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 59
    move-result v1

    .line 60
    if-nez v0, :cond_43

    .line 62
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 64
    aput v8, v2, v9

    .line 66
    aput v8, v2, v8

    .line 68
    :cond_43
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 71
    move-result-object v12

    .line 72
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 74
    aget v3, v2, v8

    .line 76
    int-to-float v3, v3

    .line 77
    aget v2, v2, v9

    .line 79
    int-to-float v2, v2

    .line 80
    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 83
    const/high16 v2, 0x3f000000  # 0.5f

    .line 85
    if-eqz v0, :cond_1af

    .line 87
    if-eq v0, v9, :cond_16d

    .line 89
    const/4 v3, 0x2

    .line 90
    if-eq v0, v3, :cond_8c

    .line 92
    const/4 v3, 0x3

    .line 93
    if-eq v0, v3, :cond_87

    .line 95
    const/4 v3, 0x5

    .line 96
    if-eq v0, v3, :cond_6b

    .line 98
    const/4 v1, 0x6

    .line 99
    if-eq v0, v1, :cond_66

    .line 101
    goto/16 :goto_1d0

    .line 103
    :cond_66
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 106
    goto/16 :goto_1d0

    .line 108
    :cond_6b
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 111
    move-result v0

    .line 112
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 114
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 117
    move-result v0

    .line 118
    add-float/2addr v0, v2

    .line 119
    float-to-int v0, v0

    .line 120
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 122
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 124
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 127
    move-result v0

    .line 128
    add-float/2addr v0, v2

    .line 129
    float-to-int v0, v0

    .line 130
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 132
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 134
    goto/16 :goto_1d0

    .line 136
    :cond_87
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    .line 139
    goto/16 :goto_1d0

    .line 141
    :cond_8c
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 143
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 146
    move-result v0

    .line 147
    if-gez v0, :cond_ae

    .line 149
    const-string v0, "Error processing scroll; pointer index for id "

    .line 151
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    move-result-object v0

    .line 155
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, " not found. Did any MotionEvents get skipped?"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    const-string v1, "RecyclerView"

    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v8

    .line 175
    :cond_ae
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 178
    move-result v1

    .line 179
    add-float/2addr v1, v2

    .line 180
    float-to-int v13, v1

    .line 181
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 184
    move-result v0

    .line 185
    add-float/2addr v0, v2

    .line 186
    float-to-int v14, v0

    .line 187
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 189
    sub-int/2addr v0, v13

    .line 190
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 192
    sub-int/2addr v1, v14

    .line 193
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 195
    if-eq v2, v9, :cond_f7

    .line 197
    if-eqz v10, :cond_db

    .line 199
    if-lez v0, :cond_d0

    .line 201
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 203
    sub-int/2addr v0, v2

    .line 204
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 207
    move-result v0

    .line 208
    goto :goto_d7

    .line 209
    :cond_d0
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 211
    add-int/2addr v0, v2

    .line 212
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 215
    move-result v0

    .line 216
    :goto_d7
    if-eqz v0, :cond_db

    .line 218
    move v2, v9

    .line 219
    goto :goto_dc

    .line 220
    :cond_db
    move v2, v8

    .line 221
    :goto_dc
    if-eqz v11, :cond_f2

    .line 223
    if-lez v1, :cond_e8

    .line 225
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 227
    sub-int/2addr v1, v3

    .line 228
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 231
    move-result v1

    .line 232
    goto :goto_ef

    .line 233
    :cond_e8
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 235
    add-int/2addr v1, v3

    .line 236
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 239
    move-result v1

    .line 240
    :goto_ef
    if-eqz v1, :cond_f2

    .line 242
    move v2, v9

    .line 243
    :cond_f2
    if-eqz v2, :cond_f7

    .line 245
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 248
    :cond_f7
    move v15, v0

    .line 249
    move/from16 v16, v1

    .line 251
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 253
    if-ne v0, v9, :cond_1d0

    .line 255
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 257
    aput v8, v3, v8

    .line 259
    aput v8, v3, v9

    .line 261
    if-eqz v10, :cond_108

    .line 263
    move v1, v15

    .line 264
    goto :goto_109

    .line 265
    :cond_108
    move v1, v8

    .line 266
    :goto_109
    if-eqz v11, :cond_10e

    .line 268
    move/from16 v2, v16

    .line 270
    goto :goto_10f

    .line 271
    :cond_10e
    move v2, v8

    .line 272
    :goto_10f
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 274
    const/4 v5, 0x0

    .line 275
    move-object/from16 v0, p0

    .line 277
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_13c

    .line 283
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 285
    aget v1, v0, v8

    .line 287
    sub-int/2addr v15, v1

    .line 288
    aget v0, v0, v9

    .line 290
    sub-int v16, v16, v0

    .line 292
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 294
    aget v1, v0, v8

    .line 296
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 298
    aget v3, v2, v8

    .line 300
    add-int/2addr v1, v3

    .line 301
    aput v1, v0, v8

    .line 303
    aget v1, v0, v9

    .line 305
    aget v2, v2, v9

    .line 307
    add-int/2addr v1, v2

    .line 308
    aput v1, v0, v9

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 313
    move-result-object v0

    .line 314
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    :cond_13c
    move/from16 v0, v16

    .line 319
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 321
    aget v2, v1, v8

    .line 323
    sub-int/2addr v13, v2

    .line 324
    iput v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 326
    aget v1, v1, v9

    .line 328
    sub-int/2addr v14, v1

    .line 329
    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 331
    if-eqz v10, :cond_14e

    .line 333
    move v1, v15

    .line 334
    goto :goto_14f

    .line 335
    :cond_14e
    move v1, v8

    .line 336
    :goto_14f
    if-eqz v11, :cond_153

    .line 338
    move v2, v0

    .line 339
    goto :goto_154

    .line 340
    :cond_153
    move v2, v8

    .line 341
    :goto_154
    invoke-virtual {v6, v1, v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_161

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 350
    move-result-object v1

    .line 351
    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 354
    :cond_161
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 356
    if-eqz v1, :cond_1d0

    .line 358
    if-nez v15, :cond_169

    .line 360
    if-eqz v0, :cond_1d0

    .line 362
    :cond_169
    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 365
    goto :goto_1d0

    .line 366
    :cond_16d
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 368
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 371
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 373
    const/16 v1, 0x3e8

    .line 375
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 377
    int-to-float v2, v2

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 381
    const/4 v0, 0x0

    .line 382
    if-eqz v10, :cond_189

    .line 384
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 386
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 388
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 391
    move-result v1

    .line 392
    neg-float v1, v1

    .line 393
    goto :goto_18a

    .line 394
    :cond_189
    move v1, v0

    .line 395
    :goto_18a
    if-eqz v11, :cond_196

    .line 397
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 399
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 401
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 404
    move-result v2

    .line 405
    neg-float v2, v2

    .line 406
    goto :goto_197

    .line 407
    :cond_196
    move v2, v0

    .line 408
    :goto_197
    cmpl-float v3, v1, v0

    .line 410
    if-nez v3, :cond_19f

    .line 412
    cmpl-float v0, v2, v0

    .line 414
    if-eqz v0, :cond_1a7

    .line 416
    :cond_19f
    float-to-int v0, v1

    .line 417
    float-to-int v1, v2

    .line 418
    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_1aa

    .line 424
    :cond_1a7
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 427
    :cond_1aa
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    .line 430
    move v8, v9

    .line 431
    goto :goto_1d0

    .line 432
    :cond_1af
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 435
    move-result v0

    .line 436
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 441
    move-result v0

    .line 442
    add-float/2addr v0, v2

    .line 443
    float-to-int v0, v0

    .line 444
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 446
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 451
    move-result v0

    .line 452
    add-float/2addr v0, v2

    .line 453
    float-to-int v0, v0

    .line 454
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 456
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 458
    if-eqz v11, :cond_1cd

    .line 460
    or-int/lit8 v10, v10, 0x2

    .line 462
    :cond_1cd
    invoke-virtual {v6, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 465
    :cond_1d0
    :goto_1d0
    if-nez v8, :cond_1d7

    .line 467
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 469
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 472
    :cond_1d7
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 475
    return v9

    .line 476
    :cond_1db
    :goto_1db
    return v8
.end method

.method public postAnimationRunner()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3
    if-nez v0, :cond_12

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 11
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p0, v0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 19
    :cond_12
    return-void
.end method

.method public processDataSetCompletelyChanged(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 3
    or-int/2addr p1, v0

    .line 4
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 12
    return-void
.end method

.method public recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x2000

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->setFlags(II)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 9
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z

    .line 11
    if-eqz v0, :cond_29

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isUpdated()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_29

    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_29

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_29

    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$b0;)J

    .line 34
    move-result-wide v0

    .line 35
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 37
    iget-object v2, v2, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 39
    invoke-virtual {v2, v0, v1, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 42
    :cond_29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 44
    iget-object v1, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 46
    invoke-virtual {v1, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/recyclerview/widget/z$a;

    .line 52
    if-nez v1, :cond_3e

    .line 54
    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    .line 57
    move-result-object v1

    .line 58
    iget-object v0, v0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 60
    invoke-virtual {v0, p1, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3e
    iput-object p2, v1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 65
    iget p1, v1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 67
    or-int/lit8 p1, p1, 0x4

    .line 69
    iput p1, v1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 71
    return-void
.end method

.method public removeAndRecycleViews()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimations()V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    if-eqz v0, :cond_17

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->b()V

    .line 29
    return-void
.end method

.method public removeAnimatingView(Landroid/view/View;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 8
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v1, v2, :cond_16

    .line 19
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)V

    .line 22
    goto :goto_2d

    .line 23
    :cond_16
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 25
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2f

    .line 31
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 33
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->f(I)Z

    .line 36
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)V

    .line 39
    iget-object v0, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 41
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)V

    .line 46
    :goto_2d
    const/4 v0, 0x1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    const/4 v0, 0x0

    .line 49
    :goto_30
    if-eqz v0, :cond_40

    .line 51
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 57
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->l(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 62
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 65
    :cond_40
    xor-int/lit8 p1, v0, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 70
    return v0
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2e

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_10

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearTmpDetachFlag()V

    .line 16
    goto :goto_2e

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_17

    .line 23
    goto :goto_2e

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {p0, p2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 50
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 53
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 56
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_23

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p1, v0, :cond_1f

    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 42
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 4
    move-result v0

    .line 5
    if-ltz p1, :cond_10

    .line 7
    if-ge p1, v0, :cond_10

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, " is an invalid index for size "

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 8
    if-ne v0, p1, :cond_c

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 13
    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public removeRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public repositionShadowingViews()V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->e()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_3f

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_3c

    .line 22
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    if-eqz v3, :cond_3c

    .line 26
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 31
    move-result v4

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v5

    .line 40
    if-ne v4, v5, :cond_2f

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 45
    move-result v5

    .line 46
    if-eq v2, v5, :cond_3c

    .line 48
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 51
    move-result v5

    .line 52
    add-int/2addr v5, v4

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 56
    move-result v6

    .line 57
    add-int/2addr v6, v2

    .line 58
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 61
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_7

    .line 64
    :cond_3f
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 5
    invoke-virtual {v0, p0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 11
    if-eqz p2, :cond_f

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 16
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$r;

    .line 18
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 27
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 7
    if-nez v0, :cond_c

    .line 9
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 16
    :goto_f
    return-void
.end method

.method public saveOldPositions()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1c

    .line 26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->saveOldPosition()V

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_7

    .line 32
    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-nez v0, :cond_c

    .line 5
    const-string p1, "RecyclerView"

    .line 7
    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 15
    if-eqz v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 27
    move-result v1

    .line 28
    if-nez v0, :cond_1f

    .line 30
    if-eqz v1, :cond_2c

    .line 32
    :cond_1f
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move p1, v2

    .line 37
    :goto_24
    if-eqz v1, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move p2, v2

    .line 41
    :goto_28
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 45
    :cond_2c
    return-void
.end method

.method public scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .registers 23

    .line 1
    move-object/from16 v8, p0

    .line 3
    move/from16 v9, p1

    .line 5
    move/from16 v10, p2

    .line 7
    move-object/from16 v11, p3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 12
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    const/4 v12, 0x1

    .line 15
    const/4 v13, 0x0

    .line 16
    if-eqz v0, :cond_2b

    .line 18
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 20
    aput v13, v0, v13

    .line 22
    aput v13, v0, v12

    .line 24
    invoke-virtual {v8, v9, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 27
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 29
    aget v1, v0, v13

    .line 31
    aget v0, v0, v12

    .line 33
    sub-int v2, v9, v1

    .line 35
    sub-int v3, v10, v0

    .line 37
    move v14, v0

    .line 38
    move v15, v1

    .line 39
    move/from16 v16, v2

    .line 41
    move/from16 v17, v3

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    move v14, v13

    .line 45
    move v15, v14

    .line 46
    move/from16 v16, v15

    .line 48
    move/from16 v17, v16

    .line 50
    :goto_31
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3c

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 61
    :cond_3c
    iget-object v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 63
    aput v13, v7, v13

    .line 65
    aput v13, v7, v12

    .line 67
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 69
    move-object/from16 v0, p0

    .line 71
    move v1, v15

    .line 72
    move v2, v14

    .line 73
    move/from16 v3, v16

    .line 75
    move/from16 v4, v17

    .line 77
    move/from16 v6, p4

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 82
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 84
    aget v1, v0, v13

    .line 86
    sub-int v2, v16, v1

    .line 88
    aget v0, v0, v12

    .line 90
    sub-int v3, v17, v0

    .line 92
    if-nez v1, :cond_62

    .line 94
    if-eqz v0, :cond_60

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    move v0, v13

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    :goto_62
    move v0, v12

    .line 100
    :goto_63
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 102
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 104
    aget v5, v4, v13

    .line 106
    sub-int/2addr v1, v5

    .line 107
    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 109
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 111
    aget v4, v4, v12

    .line 113
    sub-int/2addr v1, v4

    .line 114
    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 116
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 118
    aget v6, v1, v13

    .line 120
    add-int/2addr v6, v5

    .line 121
    aput v6, v1, v13

    .line 123
    aget v5, v1, v12

    .line 125
    add-int/2addr v5, v4

    .line 126
    aput v5, v1, v12

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 131
    move-result v1

    .line 132
    const/4 v4, 0x2

    .line 133
    if-eq v1, v4, :cond_a0

    .line 135
    if-eqz v11, :cond_9d

    .line 137
    const/16 v1, 0x2002

    .line 139
    invoke-static {v11, v1}, La/b;->K(Landroid/view/MotionEvent;I)Z

    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_9d

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 148
    move-result v1

    .line 149
    int-to-float v2, v2

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 153
    move-result v4

    .line 154
    int-to-float v3, v3

    .line 155
    invoke-direct {v8, v1, v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 158
    :cond_9d
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 161
    :cond_a0
    if-nez v15, :cond_a4

    .line 163
    if-eqz v14, :cond_a7

    .line 165
    :cond_a4
    invoke-virtual {v8, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 168
    :cond_a7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_b0

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 177
    :cond_b0
    if-nez v0, :cond_b8

    .line 179
    if-nez v15, :cond_b8

    .line 181
    if-eqz v14, :cond_b7

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move v12, v13

    .line 185
    :cond_b8
    :goto_b8
    return v12
.end method

.method public scrollStep(II[I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 7
    sget v0, Li0/i;->a:I

    .line 9
    const-string v0, "RV Scroll"

    .line 11
    invoke-static {v0}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_20

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 26
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 28
    invoke-virtual {v1, p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 31
    move-result p1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move p1, v0

    .line 34
    :goto_21
    if-eqz p2, :cond_2e

    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 40
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 42
    invoke-virtual {v1, p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 45
    move-result p2

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move p2, v0

    .line 48
    :goto_2f
    invoke-static {}, Li0/i$a;->b()V

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 57
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 60
    if-eqz p3, :cond_42

    .line 62
    aput p1, p3, v0

    .line 64
    const/4 p1, 0x1

    .line 65
    aput p2, p3, p1

    .line 67
    :cond_42
    return-void
.end method

.method public scrollTo(II)V
    .registers 3

    .line 1
    const-string p1, "RecyclerView"

    .line 3
    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    if-nez v0, :cond_14

    .line 13
    const-string p1, "RecyclerView"

    .line 15
    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 27
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r;

    .line 3
    invoke-static {p0, p1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 6
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 15
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$j;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 8
    if-eqz p1, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 16
    return-void
.end method

.method public setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$b0;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPendingAccessibilityState:I

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 18
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 20
    invoke-static {p1, p2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public setClipToPadding(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 3
    if-eq p1, v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 8
    :cond_7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 13
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 20
    :cond_13
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$k;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 9
    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 3
    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimations()V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$l;->setListener(Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    .line 14
    :cond_d
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 16
    if-eqz p1, :cond_16

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$l$b;

    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$l;->setListener(Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    .line 23
    :cond_16
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->m()V

    .line 8
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 4
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    if-eqz v0, :cond_3a

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimations()V

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->b()V

    .line 39
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 41
    if-eqz v0, :cond_31

    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 45
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 47
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 50
    :cond_31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 56
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 58
    goto :goto_3f

    .line 59
    :cond_3a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->b()V

    .line 64
    :goto_3f
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 66
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 68
    invoke-virtual {v1}, Landroidx/recyclerview/widget/b$a;->g()V

    .line 71
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v1

    .line 77
    :goto_4c
    add-int/lit8 v1, v1, -0x1

    .line 79
    if-ltz v1, :cond_70

    .line 81
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 83
    iget-object v3, v0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/view/View;

    .line 91
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_6a

    .line 102
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 107
    :cond_6a
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    goto :goto_4c

    .line 113
    :cond_70
    iget-object v0, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 115
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    .line 120
    move-result v1

    .line 121
    const/4 v2, 0x0

    .line 122
    :goto_79
    if-ge v2, v1, :cond_8c

    .line 124
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    move-result-object v3

    .line 130
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_79

    .line 141
    :cond_8c
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 146
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 148
    if-eqz p1, :cond_c4

    .line 150
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    if-nez v0, :cond_a6

    .line 154
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 157
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 159
    if-eqz p1, :cond_c4

    .line 161
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 163
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 166
    goto :goto_c4

    .line 167
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    const-string v2, "LayoutManager "

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, " is already attached to a RecyclerView:"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    invoke-static {p1, v1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    throw v0

    .line 197
    :cond_c4
    :goto_c4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 199
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->m()V

    .line 202
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 205
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_7

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lm0/r;->setNestedScrollingEnabled(Z)V

    .line 8
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 3
    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 3
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 3
    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 5
    if-eqz v1, :cond_c

    .line 7
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 11
    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 13
    :cond_c
    iput-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 15
    if-eqz p1, :cond_20

    .line 17
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_20

    .line 25
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 27
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 33
    :cond_20
    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 3
    return-void
.end method

.method setScrollState(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_d

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 17
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_30

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_29

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "; using default value"

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v1, "RecyclerView"

    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_30

    .line 42
    :cond_29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 45
    move-result p1

    .line 46
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 48
    goto :goto_36

    .line 49
    :cond_30
    :goto_30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 52
    move-result p1

    .line 53
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 55
    :goto_36
    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
.end method

.method public shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1a

    .line 8
    if-eqz p1, :cond_e

    .line 10
    invoke-static {p1}, Ln0/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    .line 13
    move-result p1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move p1, v1

    .line 16
    :goto_f
    if-nez p1, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v1, p1

    .line 20
    :goto_13
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 22
    or-int/2addr p1, v1

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    return v1
.end method

.method public smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 5

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .registers 9

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_11

    return-void

    .line 7
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    move p1, v1

    .line 8
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_22

    move p2, v1

    :cond_22
    if-nez p1, :cond_26

    if-eqz p2, :cond_48

    :cond_26
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-eq p4, v0, :cond_30

    if-lez p4, :cond_2e

    goto :goto_30

    :cond_2e
    move v0, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v0, v2

    :goto_31
    if-eqz v0, :cond_45

    if-eqz p5, :cond_3f

    if-eqz p1, :cond_38

    move v1, v2

    :cond_38
    if-eqz p2, :cond_3c

    or-int/lit8 v1, v1, 0x2

    .line 9
    :cond_3c
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 10
    :cond_3f
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$a0;->c(IILandroid/view/animation/Interpolator;I)V

    goto :goto_48

    .line 11
    :cond_45
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_48
    :goto_48
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    if-nez v0, :cond_11

    .line 10
    const-string p1, "RecyclerView"

    .line 12
    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 20
    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V

    .line 23
    return-void
.end method

.method public startInterceptRequestLayout()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 7
    if-ne v0, v1, :cond_f

    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 11
    if-nez v0, :cond_f

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 16
    :cond_f
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm0/r;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopInterceptRequestLayout(Z)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_7

    .line 6
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_10

    .line 11
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 13
    if-nez v2, :cond_10

    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 17
    :cond_10
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 19
    if-ne v2, v1, :cond_2f

    .line 21
    if-eqz p1, :cond_29

    .line 23
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 25
    if-eqz p1, :cond_29

    .line 27
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 29
    if-nez p1, :cond_29

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    if-eqz p1, :cond_29

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 37
    if-eqz p1, :cond_29

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 42
    :cond_29
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 44
    if-nez p1, :cond_2f

    .line 46
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 48
    :cond_2f
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 50
    sub-int/2addr p1, v1

    .line 51
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 53
    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0}, Lm0/r;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lm0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 8
    return-void
.end method

.method public final suppressLayout(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3
    if-eq p1, v0, :cond_38

    .line 5
    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10
    if-nez p1, :cond_20

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 30
    :cond_1d
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 32
    goto :goto_38

    .line 33
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    move-result-wide v3

    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    move-wide v1, v3

    .line 42
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 52
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 15
    return-void
.end method

.method public viewRangeUpdate(IILjava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    add-int/2addr p2, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    const/4 v2, 0x2

    .line 10
    if-ge v1, v0, :cond_36

    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 14
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_33

    .line 24
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1e

    .line 30
    goto :goto_33

    .line 31
    :cond_1e
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 33
    if-lt v5, p1, :cond_33

    .line 35
    if-ge v5, p2, :cond_33

    .line 37
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 40
    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->addChangePayload(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 49
    const/4 v3, 0x1

    .line 50
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 52
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_8

    .line 55
    :cond_36
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 57
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result v0

    .line 63
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, -0x1

    .line 65
    if-ltz v0, :cond_5a

    .line 67
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 75
    if-nez v1, :cond_4d

    .line 77
    goto :goto_3e

    .line 78
    :cond_4d
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 80
    if-lt v3, p1, :cond_3e

    .line 82
    if-ge v3, p2, :cond_3e

    .line 84
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 87
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->g(I)V

    .line 90
    goto :goto_3e

    .line 91
    :cond_5a
    return-void
.end method
