.class public Landroidx/viewpager/widget/OriginalViewPager;
.super Landroid/view/ViewGroup;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/OriginalViewPager$m;,
        Landroidx/viewpager/widget/OriginalViewPager$g;,
        Landroidx/viewpager/widget/OriginalViewPager$l;,
        Landroidx/viewpager/widget/OriginalViewPager$h;,
        Landroidx/viewpager/widget/OriginalViewPager$SavedState;,
        Landroidx/viewpager/widget/OriginalViewPager$e;,
        Landroidx/viewpager/widget/OriginalViewPager$i;,
        Landroidx/viewpager/widget/OriginalViewPager$k;,
        Landroidx/viewpager/widget/OriginalViewPager$j;,
        Landroidx/viewpager/widget/OriginalViewPager$f;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/OriginalViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x2

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field public static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$m;


# instance fields
.field private mActivePointerId:I

.field public mAdapter:Li1/a;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$i;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field public mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/OriginalViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/OriginalViewPager$l;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$j;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$k;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurIsRTL:Z

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/OriginalViewPager$f;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


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
    const v2, 0x10100b3

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->LAYOUT_ATTRS:[I

    .line 12
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$a;

    .line 14
    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$a;-><init>()V

    .line 17
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 19
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$b;

    .line 21
    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$b;-><init>()V

    .line 24
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$m;

    .line 28
    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$m;-><init>()V

    .line 31
    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$m;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$f;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 8
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v1, -0x800001

    .line 9
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    .line 10
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/4 v1, 0x2

    .line 11
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 12
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 14
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    .line 15
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$c;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$c;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 17
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$f;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 25
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 26
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 27
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 29
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 31
    iput-boolean p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    .line 32
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$c;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$c;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 33
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 34
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/OriginalViewPager$f;ILandroidx/viewpager/widget/OriginalViewPager$f;)V
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 3
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_12

    .line 13
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 15
    int-to-float v2, v2

    .line 16
    int-to-float v1, v1

    .line 17
    div-float/2addr v2, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    :goto_13
    const/4 v1, 0x0

    .line 21
    if-eqz p3, :cond_af

    .line 23
    iget v3, p3, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 25
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 27
    if-ge v3, v4, :cond_6a

    .line 29
    iget v4, p3, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 31
    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 33
    add-float/2addr v4, p3

    .line 34
    add-float/2addr v4, v2

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    move p3, v1

    .line 38
    :goto_25
    iget v5, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 40
    if-gt v3, v5, :cond_af

    .line 42
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v5

    .line 48
    if-ge p3, v5, :cond_af

    .line 50
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 58
    :goto_39
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 60
    if-le v3, v6, :cond_52

    .line 62
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v6

    .line 68
    add-int/lit8 v6, v6, -0x1

    .line 70
    if-ge p3, v6, :cond_52

    .line 72
    add-int/lit8 p3, p3, 0x1

    .line 74
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 82
    goto :goto_39

    .line 83
    :cond_52
    :goto_52
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 85
    if-ge v3, v6, :cond_61

    .line 87
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 89
    invoke-virtual {v6, v3}, Li1/a;->getPageWidth(I)F

    .line 92
    move-result v6

    .line 93
    add-float/2addr v6, v2

    .line 94
    add-float/2addr v4, v6

    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 97
    goto :goto_52

    .line 98
    :cond_61
    iput v4, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 100
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 102
    add-float/2addr v5, v2

    .line 103
    add-float/2addr v4, v5

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_25

    .line 107
    :cond_6a
    if-le v3, v4, :cond_af

    .line 109
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    move-result v4

    .line 115
    add-int/lit8 v4, v4, -0x1

    .line 117
    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 119
    add-int/lit8 v3, v3, -0x1

    .line 121
    :goto_78
    iget v5, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 123
    if-lt v3, v5, :cond_af

    .line 125
    if-ltz v4, :cond_af

    .line 127
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 135
    :goto_86
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 137
    if-ge v3, v6, :cond_97

    .line 139
    if-lez v4, :cond_97

    .line 141
    add-int/lit8 v4, v4, -0x1

    .line 143
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 151
    goto :goto_86

    .line 152
    :cond_97
    :goto_97
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 154
    if-le v3, v6, :cond_a6

    .line 156
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 158
    invoke-virtual {v6, v3}, Li1/a;->getPageWidth(I)F

    .line 161
    move-result v6

    .line 162
    add-float/2addr v6, v2

    .line 163
    sub-float/2addr p3, v6

    .line 164
    add-int/lit8 v3, v3, -0x1

    .line 166
    goto :goto_97

    .line 167
    :cond_a6
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 169
    add-float/2addr v6, v2

    .line 170
    sub-float/2addr p3, v6

    .line 171
    iput p3, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 173
    add-int/lit8 v3, v3, -0x1

    .line 175
    goto :goto_78

    .line 176
    :cond_af
    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 181
    move-result p3

    .line 182
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 184
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 186
    add-int/lit8 v5, v4, -0x1

    .line 188
    if-nez v4, :cond_bf

    .line 190
    move v6, v3

    .line 191
    goto :goto_c2

    .line 192
    :cond_bf
    const v6, -0x800001

    .line 195
    :goto_c2
    iput v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 197
    add-int/lit8 v0, v0, -0x1

    .line 199
    const/high16 v6, 0x3f800000  # 1.0f

    .line 201
    if-ne v4, v0, :cond_cf

    .line 203
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 205
    add-float/2addr v4, v3

    .line 206
    sub-float/2addr v4, v6

    .line 207
    goto :goto_d2

    .line 208
    :cond_cf
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    .line 211
    :goto_d2
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 213
    add-int/lit8 v4, p2, -0x1

    .line 215
    :goto_d6
    if-ltz v4, :cond_ff

    .line 217
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 225
    :goto_e0
    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 227
    if-le v5, v8, :cond_f0

    .line 229
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 231
    add-int/lit8 v9, v5, -0x1

    .line 233
    invoke-virtual {v8, v5}, Li1/a;->getPageWidth(I)F

    .line 236
    move-result v5

    .line 237
    add-float/2addr v5, v2

    .line 238
    sub-float/2addr v3, v5

    .line 239
    move v5, v9

    .line 240
    goto :goto_e0

    .line 241
    :cond_f0
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 243
    add-float/2addr v9, v2

    .line 244
    sub-float/2addr v3, v9

    .line 245
    iput v3, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 247
    if-nez v8, :cond_fa

    .line 249
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 251
    :cond_fa
    add-int/lit8 v4, v4, -0x1

    .line 253
    add-int/lit8 v5, v5, -0x1

    .line 255
    goto :goto_d6

    .line 256
    :cond_ff
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 258
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 260
    add-float/2addr v3, v4

    .line 261
    add-float/2addr v3, v2

    .line 262
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 264
    add-int/lit8 p1, p1, 0x1

    .line 266
    add-int/lit8 p2, p2, 0x1

    .line 268
    :goto_10b
    if-ge p2, p3, :cond_138

    .line 270
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object v4

    .line 276
    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 278
    :goto_115
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 280
    if-ge p1, v5, :cond_125

    .line 282
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 284
    add-int/lit8 v7, p1, 0x1

    .line 286
    invoke-virtual {v5, p1}, Li1/a;->getPageWidth(I)F

    .line 289
    move-result p1

    .line 290
    add-float/2addr p1, v2

    .line 291
    add-float/2addr v3, p1

    .line 292
    move p1, v7

    .line 293
    goto :goto_115

    .line 294
    :cond_125
    if-ne v5, v0, :cond_12d

    .line 296
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 298
    add-float/2addr v5, v3

    .line 299
    sub-float/2addr v5, v6

    .line 300
    iput v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 302
    :cond_12d
    iput v3, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 304
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 306
    add-float/2addr v4, v2

    .line 307
    add-float/2addr v3, v4

    .line 308
    add-int/lit8 p2, p2, 0x1

    .line 310
    add-int/lit8 p1, p1, 0x1

    .line 312
    goto :goto_10b

    .line 313
    :cond_138
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    .line 315
    return-void
.end method

.method private completeScroll(Z)V
    .registers 9

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-ne v0, v3, :cond_9

    .line 8
    move v0, v1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v0, v2

    .line 11
    :goto_a
    if-eqz v0, :cond_3d

    .line 13
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 16
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 18
    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    .line 21
    move-result v3

    .line 22
    xor-int/2addr v3, v1

    .line 23
    if-eqz v3, :cond_3d

    .line 25
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 27
    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 37
    move-result v4

    .line 38
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 40
    invoke-virtual {v5}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    .line 43
    move-result v5

    .line 44
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 46
    invoke-virtual {v6}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrY()I

    .line 49
    move-result v6

    .line 50
    if-ne v3, v5, :cond_35

    .line 52
    if-eq v4, v6, :cond_3d

    .line 54
    :cond_35
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 57
    if-eq v5, v3, :cond_3d

    .line 59
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 62
    :cond_3d
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 64
    move v3, v2

    .line 65
    :goto_40
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v4

    .line 71
    if-ge v3, v4, :cond_5a

    .line 73
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 81
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->c:Z

    .line 83
    if-eqz v5, :cond_57

    .line 85
    iput-boolean v2, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->c:Z

    .line 87
    move v0, v1

    .line 88
    :cond_57
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_40

    .line 91
    :cond_5a
    if-eqz v0, :cond_6b

    .line 93
    if-eqz p1, :cond_66

    .line 95
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 97
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 99
    invoke-static {p0, p1}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 102
    goto :goto_6b

    .line 103
    :cond_66
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_6b
    :goto_6b
    return-void
.end method

.method private determineTargetPage(IFII)I
    .registers 6

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result p4

    .line 5
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    .line 7
    if-le p4, v0, :cond_16

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 12
    move-result p4

    .line 13
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    .line 15
    if-le p4, v0, :cond_16

    .line 17
    if-lez p3, :cond_13

    .line 19
    goto :goto_24

    .line 20
    :cond_13
    add-int/lit8 p1, p1, 0x1

    .line 22
    goto :goto_24

    .line 23
    :cond_16
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 25
    if-lt p1, p3, :cond_1e

    .line 27
    const p3, 0x3ecccccd  # 0.4f

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    const p3, 0x3f19999a  # 0.6f

    .line 34
    :goto_21
    add-float/2addr p2, p3

    .line 35
    float-to-int p2, p2

    .line 36
    add-int/2addr p1, p2

    .line 37
    :goto_24
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result p2

    .line 43
    if-lez p2, :cond_4f

    .line 45
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 47
    const/4 p3, 0x0

    .line 48
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 54
    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result p4

    .line 60
    add-int/lit8 p4, p4, -0x1

    .line 62
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 68
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 70
    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 72
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 75
    move-result p1

    .line 76
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result p1

    .line 80
    :cond_4f
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageScrolled(IFI)V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 10
    if-eqz v0, :cond_22

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_22

    .line 19
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 27
    if-eqz v2, :cond_1f

    .line 29
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageScrolled(IFI)V

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageScrolled(IFI)V

    .line 42
    :cond_29
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageSelected(I)V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 10
    if-eqz v0, :cond_22

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_22

    .line 19
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 27
    if-eqz v2, :cond_1f

    .line 29
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageSelected(I)V

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageSelected(I)V

    .line 42
    :cond_29
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageScrollStateChanged(I)V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 10
    if-eqz v0, :cond_22

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_22

    .line 19
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 27
    if-eqz v2, :cond_1f

    .line 29
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageScrollStateChanged(I)V

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$j;->onPageScrollStateChanged(I)V

    .line 42
    :cond_29
    return-void
.end method

.method private enableLayers(Z)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_19

    .line 9
    if-eqz p1, :cond_d

    .line 11
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformerLayerType:I

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v3, v1

    .line 15
    :goto_e
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_6

    .line 26
    :cond_19
    return-void
.end method

.method private endDrag()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 4
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 6
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8
    if-eqz v0, :cond_f

    .line 10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    .line 1
    if-nez p1, :cond_7

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    :cond_7
    if-nez p2, :cond_e

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    return-object p1

    .line 15
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 24
    move-result v0

    .line 25
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 36
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    move-result-object p2

    .line 43
    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 45
    if-eqz v0, :cond_5b

    .line 47
    if-eq p2, p0, :cond_5b

    .line 49
    check-cast p2, Landroid/view/ViewGroup;

    .line 51
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 69
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 78
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 83
    move-result v1

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 90
    move-result-object p2

    .line 91
    goto :goto_2a

    .line 92
    :cond_5b
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$f;
    .registers 13

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_f

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    int-to-float v3, v0

    .line 14
    div-float/2addr v2, v3

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v2, v1

    .line 17
    :goto_10
    if-lez v0, :cond_18

    .line 19
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v3, v0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v3, v1

    .line 26
    :goto_19
    const/4 v0, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, -0x1

    .line 29
    const/4 v6, 0x1

    .line 30
    move v8, v4

    .line 31
    move v7, v5

    .line 32
    move v9, v6

    .line 33
    move v5, v1

    .line 34
    :goto_21
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v10

    .line 40
    if-ge v8, v10, :cond_70

    .line 42
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 50
    if-nez v9, :cond_4a

    .line 52
    iget v11, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 54
    add-int/2addr v7, v6

    .line 55
    if-eq v11, v7, :cond_4a

    .line 57
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 59
    add-float/2addr v1, v5

    .line 60
    add-float/2addr v1, v3

    .line 61
    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 63
    iput v7, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 65
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 67
    invoke-virtual {v1, v7}, Li1/a;->getPageWidth(I)F

    .line 70
    move-result v1

    .line 71
    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 73
    add-int/lit8 v8, v8, -0x1

    .line 75
    :cond_4a
    iget v1, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 77
    iget v5, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 79
    add-float/2addr v5, v1

    .line 80
    add-float/2addr v5, v3

    .line 81
    if-nez v9, :cond_58

    .line 83
    cmpl-float v7, v2, v1

    .line 85
    if-ltz v7, :cond_57

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    return-object v0

    .line 89
    :cond_58
    :goto_58
    cmpg-float v0, v2, v5

    .line 91
    if-ltz v0, :cond_6f

    .line 93
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v0

    .line 99
    sub-int/2addr v0, v6

    .line 100
    if-ne v8, v0, :cond_66

    .line 102
    goto :goto_6f

    .line 103
    :cond_66
    iget v7, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 105
    iget v5, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 107
    add-int/lit8 v8, v8, 0x1

    .line 109
    move v9, v4

    .line 110
    move-object v0, v10

    .line 111
    goto :goto_21

    .line 112
    :cond_6f
    :goto_6f
    return-object v10

    .line 113
    :cond_70
    return-object v0
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    const-class v0, Landroidx/viewpager/widget/OriginalViewPager$e;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method private isGutterDrag(FF)Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 3
    int-to-float v0, v0

    .line 4
    cmpg-float v0, p1, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-gez v0, :cond_c

    .line 9
    cmpl-float v0, p2, v1

    .line 11
    if-gtz v0, :cond_1c

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v0

    .line 17
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 19
    sub-int/2addr v0, v2

    .line 20
    int-to-float v0, v0

    .line 21
    cmpl-float p1, p1, v0

    .line 23
    if-lez p1, :cond_1e

    .line 25
    cmpg-float p1, p2, v1

    .line 27
    if-gez p1, :cond_1e

    .line 29
    :cond_1c
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    return p1
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
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 11
    if-ne v1, v2, :cond_24

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 30
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 32
    if-eqz p1, :cond_24

    .line 34
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 37
    :cond_24
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-string v1, "onPageScrolled did not call superclass implementation"

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_21

    .line 12
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 14
    if-eqz p1, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 23
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    return v2

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_21
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 41
    move-result v3

    .line 42
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 44
    add-int v5, v3, v4

    .line 46
    int-to-float v4, v4

    .line 47
    int-to-float v3, v3

    .line 48
    div-float/2addr v4, v3

    .line 49
    iget v6, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 51
    int-to-float p1, p1

    .line 52
    div-float/2addr p1, v3

    .line 53
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 55
    sub-float/2addr p1, v3

    .line 56
    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 58
    add-float/2addr v0, v4

    .line 59
    div-float/2addr p1, v0

    .line 60
    int-to-float v0, v5

    .line 61
    mul-float/2addr v0, p1

    .line 62
    float-to-int v0, v0

    .line 63
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 65
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 68
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 70
    if-eqz p1, :cond_49

    .line 72
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method

.method private performDrag(F)Z
    .registers 11

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 3
    sub-float/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr p1, v0

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 22
    mul-float/2addr v2, v0

    .line 23
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 32
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v6

    .line 38
    const/4 v7, 0x1

    .line 39
    sub-int/2addr v6, v7

    .line 40
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 46
    iget v6, v3, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 48
    if-eqz v6, :cond_36

    .line 50
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 52
    mul-float/2addr v1, v0

    .line 53
    move v3, v4

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v3, v7

    .line 56
    :goto_37
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 58
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 60
    invoke-virtual {v8}, Li1/a;->getCount()I

    .line 63
    move-result v8

    .line 64
    sub-int/2addr v8, v7

    .line 65
    if-eq v6, v8, :cond_47

    .line 67
    iget v2, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 69
    mul-float/2addr v2, v0

    .line 70
    move v5, v4

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v5, v7

    .line 73
    :goto_48
    cmpg-float v6, p1, v1

    .line 75
    if-gez v6, :cond_5d

    .line 77
    if-eqz v3, :cond_5b

    .line 79
    sub-float p1, v1, p1

    .line 81
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 83
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 86
    move-result p1

    .line 87
    div-float/2addr p1, v0

    .line 88
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 91
    move v4, v7

    .line 92
    :cond_5b
    move p1, v1

    .line 93
    goto :goto_70

    .line 94
    :cond_5d
    cmpl-float v1, p1, v2

    .line 96
    if-lez v1, :cond_70

    .line 98
    if-eqz v5, :cond_6f

    .line 100
    sub-float/2addr p1, v2

    .line 101
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 103
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 106
    move-result p1

    .line 107
    div-float/2addr p1, v0

    .line 108
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 111
    move v4, v7

    .line 112
    :cond_6f
    move p1, v2

    .line 113
    :cond_70
    :goto_70
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 115
    float-to-int v1, p1

    .line 116
    int-to-float v2, v1

    .line 117
    sub-float/2addr p1, v2

    .line 118
    add-float/2addr p1, v0

    .line 119
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 128
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 131
    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 6

    .line 1
    if-lez p2, :cond_49

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_49

    .line 11
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 13
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_21

    .line 19
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 21
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    .line 24
    move-result p2

    .line 25
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 28
    move-result p3

    .line 29
    mul-int/2addr p2, p3

    .line 30
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/SpringScroller;->setFinalX(I)V

    .line 33
    goto :goto_79

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    move-result v0

    .line 38
    sub-int/2addr p1, v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    move-result v0

    .line 43
    sub-int/2addr p1, v0

    .line 44
    add-int/2addr p1, p3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    move-result p3

    .line 49
    sub-int/2addr p2, p3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 53
    move-result p3

    .line 54
    sub-int/2addr p2, p3

    .line 55
    add-int/2addr p2, p4

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 59
    move-result p3

    .line 60
    int-to-float p3, p3

    .line 61
    int-to-float p2, p2

    .line 62
    div-float/2addr p3, p2

    .line 63
    int-to-float p1, p1

    .line 64
    mul-float/2addr p3, p1

    .line 65
    float-to-int p1, p3

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 73
    goto :goto_79

    .line 74
    :cond_49
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 76
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_5a

    .line 82
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 84
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 86
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 89
    move-result p2

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    const/4 p2, 0x0

    .line 92
    :goto_5b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 95
    move-result p3

    .line 96
    sub-int/2addr p1, p3

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 100
    move-result p3

    .line 101
    sub-int/2addr p1, p3

    .line 102
    int-to-float p1, p1

    .line 103
    mul-float/2addr p2, p1

    .line 104
    float-to-int p1, p2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 108
    move-result p2

    .line 109
    if-eq p1, p2, :cond_79

    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 118
    move-result p2

    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 122
    :cond_79
    :goto_79
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1d

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 18
    iget-boolean v1, v1, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 20
    if-nez v1, :cond_1a

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 4
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->endDrag()V

    .line 7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 9
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 12
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 14
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 17
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 19
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_23

    .line 25
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 27
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 37
    :goto_24
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1d

    .line 8
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 15
    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 17
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 19
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 22
    move-result v0

    .line 23
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result v0

    .line 27
    mul-float/2addr v0, v2

    .line 28
    float-to-int v0, v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v1

    .line 31
    :goto_1e
    if-eqz p2, :cond_29

    .line 33
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->smoothScrollTo(III)V

    .line 36
    if-eqz p4, :cond_37

    .line 38
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 41
    goto :goto_37

    .line 42
    :cond_29
    if-eqz p4, :cond_2e

    .line 44
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 47
    :cond_2e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 53
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 56
    :cond_37
    :goto_37
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    .line 3
    if-eq v0, p1, :cond_6

    .line 5
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    .line 7
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 7
    if-nez v0, :cond_10

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_18
    if-ge v1, v0, :cond_26

    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_18

    .line 39
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 41
    sget-object v1, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$m;

    .line 43
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    :cond_2d
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 11
    if-eq v1, v2, :cond_2f

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_2f

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2c

    .line 30
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_2c

    .line 36
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 38
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 40
    if-ne v4, v5, :cond_2c

    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 45
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_d

    .line 48
    :cond_2f
    const/high16 p2, 0x40000

    .line 50
    if-ne v1, p2, :cond_39

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_54

    .line 58
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_40

    .line 64
    return-void

    .line 65
    :cond_40
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_51

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_51

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_51

    .line 81
    return-void

    .line 82
    :cond_51
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_54
    return-void
.end method

.method public addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$f;
    .registers 5

    .line 1
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 3
    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$f;-><init>()V

    .line 6
    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 8
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 10
    invoke-virtual {v1, p0, p1}, Li1/a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 18
    invoke-virtual {v1, p1}, Li1/a;->getPageWidth(I)F

    .line 21
    move-result p1

    .line 22
    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 24
    if-ltz p2, :cond_28

    .line 26
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p1

    .line 32
    if-lt p2, p1, :cond_22

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    :goto_28
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_2d
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/OriginalViewPager$i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_23

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_20

    .line 18
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_20

    .line 24
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 26
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 28
    if-ne v2, v3, :cond_20

    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 33
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object p3

    .line 11
    :cond_a
    move-object v0, p3

    .line 12
    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 14
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 16
    invoke-static {p1}, Landroidx/viewpager/widget/OriginalViewPager;->isDecorView(Landroid/view/View;)Z

    .line 19
    move-result v2

    .line 20
    or-int/2addr v1, v2

    .line 21
    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 23
    iget-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 25
    if-eqz v2, :cond_2b

    .line 27
    if-nez v1, :cond_23

    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$g;->d:Z

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 35
    goto :goto_2e

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    const-string p2, "Cannot add pager decor view during layout"

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :goto_2e
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, p0, :cond_a

    .line 10
    goto :goto_63

    .line 11
    :cond_a
    if-eqz v0, :cond_64

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v4

    .line 17
    :goto_10
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 19
    if-eqz v5, :cond_1d

    .line 21
    if-ne v4, p0, :cond_18

    .line 23
    move v4, v1

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v4

    .line 29
    goto :goto_10

    .line 30
    :cond_1d
    move v4, v2

    .line 31
    :goto_1e
    if-nez v4, :cond_64

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object v0

    .line 53
    :goto_34
    instance-of v5, v0, Landroid/view/ViewGroup;

    .line 55
    if-eqz v5, :cond_4d

    .line 57
    const-string v5, " => "

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 76
    move-result-object v0

    .line 77
    goto :goto_34

    .line 78
    :cond_4d
    const-string v0, "arrowScroll tried to find focus based on non-child current focused view "

    .line 80
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    const-string v4, "ViewPager"

    .line 97
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_63
    move-object v0, v3

    .line 101
    :cond_64
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 108
    move-result-object v3

    .line 109
    const/16 v4, 0x42

    .line 111
    const/16 v5, 0x11

    .line 113
    if-eqz v3, :cond_b5

    .line 115
    if-eq v3, v0, :cond_b5

    .line 117
    if-ne p1, v5, :cond_95

    .line 119
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 121
    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 124
    move-result-object v1

    .line 125
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 127
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 129
    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 132
    move-result-object v2

    .line 133
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 135
    if-eqz v0, :cond_8f

    .line 137
    if-lt v1, v2, :cond_8f

    .line 139
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    .line 142
    move-result v0

    .line 143
    goto :goto_93

    .line 144
    :cond_8f
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 147
    move-result v0

    .line 148
    :goto_93
    move v2, v0

    .line 149
    goto :goto_c8

    .line 150
    :cond_95
    if-ne p1, v4, :cond_c8

    .line 152
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 154
    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 157
    move-result-object v1

    .line 158
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 160
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 165
    move-result-object v2

    .line 166
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 168
    if-eqz v0, :cond_b0

    .line 170
    if-gt v1, v2, :cond_b0

    .line 172
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    .line 175
    move-result v0

    .line 176
    goto :goto_93

    .line 177
    :cond_b0
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 180
    move-result v0

    .line 181
    goto :goto_93

    .line 182
    :cond_b5
    if-eq p1, v5, :cond_c4

    .line 184
    if-ne p1, v1, :cond_ba

    .line 186
    goto :goto_c4

    .line 187
    :cond_ba
    if-eq p1, v4, :cond_bf

    .line 189
    const/4 v0, 0x2

    .line 190
    if-ne p1, v0, :cond_c8

    .line 192
    :cond_bf
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    .line 195
    move-result v2

    .line 196
    goto :goto_c8

    .line 197
    :cond_c4
    :goto_c4
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    .line 200
    move-result v2

    .line 201
    :cond_c8
    :goto_c8
    if-eqz v2, :cond_d1

    .line 203
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 206
    move-result p1

    .line 207
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 210
    :cond_d1
    return v2
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    .line 10
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 16
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 18
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    if-nez v1, :cond_1c

    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 32
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    move-result-wide v10

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    move-wide v2, v10

    .line 41
    move-wide v4, v10

    .line 42
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 51
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 54
    iput-wide v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragBeginTime:J

    .line 56
    return v0
.end method

.method public canScroll(Landroid/view/View;ZIII)Z
    .registers 18

    .line 1
    move-object v0, p1

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_52

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 13
    move-result v3

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 17
    move-result v4

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v5

    .line 22
    sub-int/2addr v5, v2

    .line 23
    :goto_16
    if-ltz v5, :cond_52

    .line 25
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v7

    .line 29
    add-int v6, p4, v3

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 34
    move-result v8

    .line 35
    if-lt v6, v8, :cond_4f

    .line 37
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 40
    move-result v8

    .line 41
    if-ge v6, v8, :cond_4f

    .line 43
    add-int v8, p5, v4

    .line 45
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 48
    move-result v9

    .line 49
    if-lt v8, v9, :cond_4f

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 54
    move-result v9

    .line 55
    if-ge v8, v9, :cond_4f

    .line 57
    const/4 v9, 0x1

    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 61
    move-result v10

    .line 62
    sub-int v10, v6, v10

    .line 64
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 67
    move-result v6

    .line 68
    sub-int v11, v8, v6

    .line 70
    move-object v6, p0

    .line 71
    move v8, v9

    .line 72
    move v9, p3

    .line 73
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_4f

    .line 79
    return v2

    .line 80
    :cond_4f
    add-int/lit8 v5, v5, -0x1

    .line 82
    goto :goto_16

    .line 83
    :cond_52
    if-eqz p2, :cond_5d

    .line 85
    move v1, p3

    .line 86
    neg-int v1, v1

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5d

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    const/4 v2, 0x0

    .line 95
    :goto_5e
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_1a

    .line 18
    int-to-float p1, v0

    .line 19
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 21
    mul-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    if-le v2, p1, :cond_19

    .line 25
    move v1, v3

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    if-lez p1, :cond_24

    .line 29
    int-to-float p1, v0

    .line 30
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 32
    mul-float/2addr p1, v0

    .line 33
    float-to-int p1, p1

    .line 34
    if-ge v2, p1, :cond_24

    .line 36
    move v1, v3

    .line 37
    :cond_24
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public clearOnPageChangeListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 4
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 6
    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_43

    .line 12
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 14
    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->computeScrollOffset()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_43

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 30
    invoke-virtual {v2}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 36
    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrY()I

    .line 39
    move-result v3

    .line 40
    if-ne v0, v2, :cond_2b

    .line 42
    if-eq v1, v3, :cond_3d

    .line 44
    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 47
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3d

    .line 53
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 55
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 62
    :cond_3d
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 64
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 67
    return-void

    .line 68
    :cond_43
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 71
    return-void
.end method

.method public convertPositionForRTL(IIZZ)I
    .registers 5

    if-ne p3, p4, :cond_3

    return p2

    :cond_3
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public dataSetChanged()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 3
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 17
    mul-int/lit8 v2, v2, 0x2

    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr v2, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-ge v1, v2, :cond_21

    .line 24
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v1

    .line 30
    if-ge v1, v0, :cond_21

    .line 32
    move v1, v3

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v1, v4

    .line 35
    :goto_22
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 37
    move v5, v4

    .line 38
    move v6, v5

    .line 39
    :goto_26
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v7

    .line 45
    if-ge v5, v7, :cond_7e

    .line 47
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 55
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 57
    iget-object v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    .line 59
    invoke-virtual {v8, v9}, Li1/a;->getItemPosition(Ljava/lang/Object;)I

    .line 62
    move-result v8

    .line 63
    const/4 v9, -0x1

    .line 64
    if-ne v8, v9, :cond_42

    .line 66
    goto :goto_7c

    .line 67
    :cond_42
    const/4 v9, -0x2

    .line 68
    if-ne v8, v9, :cond_70

    .line 70
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    add-int/lit8 v5, v5, -0x1

    .line 77
    if-nez v6, :cond_54

    .line 79
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 81
    invoke-virtual {v1, p0}, Li1/a;->startUpdate(Landroid/view/ViewGroup;)V

    .line 84
    move v6, v3

    .line 85
    :cond_54
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 87
    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 89
    iget-object v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    .line 91
    invoke-virtual {v1, p0, v8, v9}, Li1/a;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 94
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 96
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 98
    if-ne v1, v7, :cond_6e

    .line 100
    add-int/lit8 v2, v0, -0x1

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 105
    move-result v1

    .line 106
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v1

    .line 110
    move v2, v1

    .line 111
    :cond_6e
    :goto_6e
    move v1, v3

    .line 112
    goto :goto_7c

    .line 113
    :cond_70
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 115
    if-eq v9, v8, :cond_7c

    .line 117
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 119
    if-ne v9, v1, :cond_79

    .line 121
    move v2, v8

    .line 122
    :cond_79
    iput v8, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 124
    goto :goto_6e

    .line 125
    :cond_7c
    :goto_7c
    add-int/2addr v5, v3

    .line 126
    goto :goto_26

    .line 127
    :cond_7e
    if-eqz v6, :cond_85

    .line 129
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 131
    invoke-virtual {v0, p0}, Li1/a;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 134
    :cond_85
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 136
    sget-object v5, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 138
    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    if-eqz v1, :cond_af

    .line 143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 146
    move-result v0

    .line 147
    move v1, v4

    .line 148
    :goto_93
    if-ge v1, v0, :cond_a9

    .line 150
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 160
    iget-boolean v6, v5, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 162
    if-nez v6, :cond_a6

    .line 164
    const/4 v6, 0x0

    .line 165
    iput v6, v5, Landroidx/viewpager/widget/OriginalViewPager$g;->c:F

    .line 167
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    .line 169
    goto :goto_93

    .line 170
    :cond_a9
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 176
    :cond_af
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 7
    if-ne v0, v1, :cond_d

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_13
    if-ge v2, v0, :cond_36

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_33

    .line 32
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_33

    .line 38
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 40
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 42
    if-ne v4, v5, :cond_33

    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_33

    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_13

    .line 55
    :cond_36
    return v1
.end method

.method public distanceInfluenceForSnapDuration(F)F
    .registers 4

    .line 1
    const/high16 v0, 0x3f000000  # 0.5f

    .line 3
    sub-float/2addr p1, v0

    .line 4
    const v0, 0x3ef1463b

    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-double v0, p1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 12
    move-result-wide v0

    .line 13
    double-to-float p1, v0

    .line 14
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_18

    .line 14
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 16
    if-eqz v0, :cond_18

    .line 18
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 21
    move-result v0

    .line 22
    if-le v0, v2, :cond_18

    .line 24
    goto :goto_24

    .line 25
    :cond_18
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 27
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 30
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 32
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 35
    goto/16 :goto_a7

    .line 37
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 39
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_64

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 56
    move-result v3

    .line 57
    sub-int/2addr v2, v3

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 66
    move-result v3

    .line 67
    const/high16 v4, 0x43870000  # 270.0f

    .line 69
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 72
    neg-int v4, v2

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 76
    move-result v5

    .line 77
    add-int/2addr v5, v4

    .line 78
    int-to-float v4, v5

    .line 79
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 81
    int-to-float v6, v3

    .line 82
    mul-float/2addr v5, v6

    .line 83
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 88
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 91
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 93
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 96
    move-result v2

    .line 97
    or-int/2addr v1, v2

    .line 98
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    :cond_64
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 103
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_a7

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    move-result v3

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 124
    move-result v4

    .line 125
    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 129
    move-result v4

    .line 130
    sub-int/2addr v3, v4

    .line 131
    const/high16 v4, 0x42b40000  # 90.0f

    .line 133
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 139
    move-result v4

    .line 140
    neg-int v4, v4

    .line 141
    int-to-float v4, v4

    .line 142
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 144
    const/high16 v6, 0x3f800000  # 1.0f

    .line 146
    add-float/2addr v5, v6

    .line 147
    neg-float v5, v5

    .line 148
    int-to-float v6, v2

    .line 149
    mul-float/2addr v5, v6

    .line 150
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 155
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 158
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 160
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 163
    move-result v2

    .line 164
    or-int/2addr v1, v2

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 168
    :cond_a7
    :goto_a7
    if-eqz v1, :cond_ae

    .line 170
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 172
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 175
    :cond_ae
    return-void
.end method

.method public drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_14

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_14

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    .line 3
    if-eqz v0, :cond_47

    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 7
    if-eqz v0, :cond_40

    .line 9
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    const/16 v1, 0x3e8

    .line 13
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    .line 15
    int-to-float v2, v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 19
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 24
    move-result v0

    .line 25
    float-to-int v0, v0

    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 29
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 36
    move-result v3

    .line 37
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 40
    move-result-object v4

    .line 41
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 43
    int-to-float v3, v3

    .line 44
    int-to-float v2, v2

    .line 45
    div-float/2addr v3, v2

    .line 46
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 48
    sub-float/2addr v3, v2

    .line 49
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 51
    div-float/2addr v3, v2

    .line 52
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 54
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 56
    sub-float/2addr v2, v4

    .line 57
    float-to-int v2, v2

    .line 58
    invoke-direct {p0, v5, v3, v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->determineTargetPage(IFII)I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0, v2, v1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    .line 65
    :cond_40
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->endDrag()V

    .line 68
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    .line 71
    return-void

    .line 72
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_53

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x15

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v1, :cond_41

    .line 16
    const/16 v1, 0x16

    .line 18
    if-eq v0, v1, :cond_2f

    .line 20
    const/16 v1, 0x3d

    .line 22
    if-eq v0, v1, :cond_18

    .line 24
    goto :goto_53

    .line 25
    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_23

    .line 31
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 34
    move-result p1

    .line 35
    goto :goto_54

    .line 36
    :cond_23
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_53

    .line 43
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 46
    move-result p1

    .line 47
    goto :goto_54

    .line 48
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3a

    .line 54
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    .line 57
    move-result p1

    .line 58
    goto :goto_54

    .line 59
    :cond_3a
    const/16 p1, 0x42

    .line 61
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 64
    move-result p1

    .line 65
    goto :goto_54

    .line 66
    :cond_41
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4c

    .line 72
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    .line 75
    move-result p1

    .line 76
    goto :goto_54

    .line 77
    :cond_4c
    const/16 p1, 0x11

    .line 79
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    .line 82
    move-result p1

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    :goto_53
    const/4 p1, 0x0

    .line 85
    :goto_54
    return p1
.end method

.method public fakeDragBy(F)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    .line 3
    if-eqz v0, :cond_81

    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 12
    add-float/2addr v0, p1

    .line 13
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    sub-float/2addr v0, p1

    .line 21
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    .line 28
    mul-float/2addr v1, p1

    .line 29
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 31
    mul-float/2addr v2, p1

    .line 32
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 41
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v5

    .line 47
    add-int/lit8 v5, v5, -0x1

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 55
    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 57
    if-eqz v5, :cond_3d

    .line 59
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 61
    mul-float/2addr v1, p1

    .line 62
    :cond_3d
    iget v3, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 64
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 66
    invoke-virtual {v5}, Li1/a;->getCount()I

    .line 69
    move-result v5

    .line 70
    add-int/lit8 v5, v5, -0x1

    .line 72
    if-eq v3, v5, :cond_4c

    .line 74
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 76
    mul-float/2addr v2, p1

    .line 77
    :cond_4c
    cmpg-float p1, v0, v1

    .line 79
    if-gez p1, :cond_52

    .line 81
    move v0, v1

    .line 82
    goto :goto_57

    .line 83
    :cond_52
    cmpl-float p1, v0, v2

    .line 85
    if-lez p1, :cond_57

    .line 87
    move v0, v2

    .line 88
    :cond_57
    :goto_57
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 90
    float-to-int v1, v0

    .line 91
    int-to-float v2, v1

    .line 92
    sub-float/2addr v0, v2

    .line 93
    add-float/2addr v0, p1

    .line 94
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 103
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 109
    move-result-wide v4

    .line 110
    iget-wide v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragBeginTime:J

    .line 112
    const/4 v6, 0x2

    .line 113
    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 115
    const/4 v8, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 123
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 129
    return-void

    .line 130
    :cond_81
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 132
    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 3
    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$g;-><init>()V

    .line 6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 2
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/OriginalViewPager$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Li1/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 3
    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .registers 5

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_9

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 8
    sub-int p2, p1, p2

    .line 10
    :cond_9
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/View;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 24
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$g;->f:I

    .line 26
    return p1
.end method

.method public getCurrentItem()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 3
    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 3
    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 3
    return v0
.end method

.method public infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_13

    .line 7
    if-eqz v0, :cond_11

    .line 9
    instance-of p1, v0, Landroid/view/View;

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    move-object p1, v0

    .line 15
    check-cast p1, Landroid/view/View;

    .line 17
    goto :goto_0

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1f

    .line 10
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 18
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 20
    iget-object v3, v1, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    .line 22
    invoke-virtual {v2, p1, v3}, Li1/a;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1c

    .line 28
    return-object v1

    .line 29
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$f;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_19

    .line 10
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 18
    iget v2, v1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 20
    if-ne v2, p1, :cond_16

    .line 22
    return-object v1

    .line 23
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public initViewPager()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    const/high16 v0, 0x40000

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 20
    invoke-direct {v2}, Lmiuix/androidbasewidget/widget/SpringScroller;-><init>()V

    .line 23
    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 25
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object v3

    .line 37
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 39
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 42
    move-result v4

    .line 43
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 45
    const/high16 v4, 0x43c80000  # 400.0f

    .line 47
    mul-float/2addr v4, v3

    .line 48
    float-to-int v4, v4

    .line 49
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    .line 51
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 54
    move-result v2

    .line 55
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    .line 57
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 59
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 64
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 66
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 71
    const/high16 v1, 0x41c80000  # 25.0f

    .line 73
    mul-float/2addr v1, v3

    .line 74
    float-to-int v1, v1

    .line 75
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    .line 77
    const/high16 v1, 0x40000000  # 2.0f

    .line 79
    mul-float/2addr v1, v3

    .line 80
    float-to-int v1, v1

    .line 81
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCloseEnough:I

    .line 83
    const/high16 v1, 0x41800000  # 16.0f

    .line 85
    mul-float/2addr v3, v1

    .line 86
    float-to-int v1, v3

    .line 87
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    .line 89
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$h;

    .line 91
    invoke-direct {v1, p0}, Landroidx/viewpager/widget/OriginalViewPager$h;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    .line 94
    invoke-static {p0, v1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 97
    invoke-static {p0}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_69

    .line 103
    invoke-static {p0, v0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 106
    :cond_69
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$d;

    .line 108
    invoke-direct {v0, p0}, Landroidx/viewpager/widget/OriginalViewPager$d;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    .line 111
    invoke-static {p0, v0}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    .line 114
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    .line 3
    return v0
.end method

.method public isRTL()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    :goto_15
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_14

    .line 16
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 18
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 21
    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 24
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 8
    if-lez v1, :cond_a9

    .line 10
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v1, :cond_a9

    .line 14
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_a9

    .line 22
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 24
    if-eqz v1, :cond_a9

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v2

    .line 34
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 36
    int-to-float v3, v3

    .line 37
    int-to-float v4, v2

    .line 38
    div-float/2addr v3, v4

    .line 39
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 48
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 50
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v8

    .line 56
    iget v9, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 58
    iget-object v10, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 60
    add-int/lit8 v11, v8, -0x1

    .line 62
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v10

    .line 66
    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 68
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 70
    :goto_45
    if-ge v9, v10, :cond_a9

    .line 72
    :goto_47
    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 74
    if-le v9, v11, :cond_58

    .line 76
    if-ge v6, v8, :cond_58

    .line 78
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 82
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 88
    goto :goto_47

    .line 89
    :cond_58
    if-ne v9, v11, :cond_64

    .line 91
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 93
    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 95
    add-float v12, v7, v11

    .line 97
    mul-float/2addr v12, v4

    .line 98
    add-float/2addr v7, v11

    .line 99
    add-float/2addr v7, v3

    .line 100
    goto :goto_70

    .line 101
    :cond_64
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 103
    invoke-virtual {v11, v9}, Li1/a;->getPageWidth(I)F

    .line 106
    move-result v11

    .line 107
    add-float v12, v7, v11

    .line 109
    mul-float/2addr v12, v4

    .line 110
    add-float/2addr v11, v3

    .line 111
    add-float/2addr v11, v7

    .line 112
    move v7, v11

    .line 113
    :goto_70
    iget v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 115
    int-to-float v11, v11

    .line 116
    add-float/2addr v11, v12

    .line 117
    int-to-float v13, v1

    .line 118
    cmpl-float v11, v11, v13

    .line 120
    if-lez v11, :cond_98

    .line 122
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 127
    move-result v13

    .line 128
    iget v14, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    .line 130
    iget v15, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 132
    int-to-float v15, v15

    .line 133
    add-float/2addr v15, v12

    .line 134
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 137
    move-result v15

    .line 138
    move/from16 v16, v3

    .line 140
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 142
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    move-object/from16 v11, p1

    .line 149
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    goto :goto_9c

    .line 153
    :cond_98
    move-object/from16 v11, p1

    .line 155
    move/from16 v16, v3

    .line 157
    :goto_9c
    add-int v3, v1, v2

    .line 159
    int-to-float v3, v3

    .line 160
    cmpl-float v3, v12, v3

    .line 162
    if-lez v3, :cond_a4

    .line 164
    goto :goto_a9

    .line 165
    :cond_a4
    add-int/lit8 v9, v9, 0x1

    .line 167
    move/from16 v3, v16

    .line 169
    goto :goto_45

    .line 170
    :cond_a9
    :goto_a9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    move-result v0

    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_120

    .line 14
    const/4 v9, 0x1

    .line 15
    if-ne v0, v9, :cond_12

    .line 17
    goto/16 :goto_120

    .line 19
    :cond_12
    if-eqz v0, :cond_1e

    .line 21
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 23
    if-eqz v1, :cond_19

    .line 25
    return v9

    .line 26
    :cond_19
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    return v8

    .line 31
    :cond_1e
    const/4 v1, 0x2

    .line 32
    if-eqz v0, :cond_be

    .line 34
    if-eq v0, v1, :cond_2d

    .line 36
    const/4 v1, 0x6

    .line 37
    if-eq v0, v1, :cond_28

    .line 39
    goto/16 :goto_10e

    .line 41
    :cond_28
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 44
    goto/16 :goto_10e

    .line 46
    :cond_2d
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 48
    const/4 v1, -0x1

    .line 49
    if-ne v0, v1, :cond_34

    .line 51
    goto/16 :goto_10e

    .line 53
    :cond_34
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 56
    move-result v0

    .line 57
    if-ltz v0, :cond_10e

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 62
    move-result v1

    .line 63
    if-lt v0, v1, :cond_42

    .line 65
    goto/16 :goto_10e

    .line 67
    :cond_42
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 70
    move-result v10

    .line 71
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 73
    sub-float v1, v10, v1

    .line 75
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 78
    move-result v11

    .line 79
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 82
    move-result v12

    .line 83
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    .line 85
    sub-float v0, v12, v0

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 90
    move-result v13

    .line 91
    const/4 v0, 0x0

    .line 92
    cmpl-float v14, v1, v0

    .line 94
    if-eqz v14, :cond_7a

    .line 96
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 98
    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->isGutterDrag(FF)Z

    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_7a

    .line 104
    const/4 v2, 0x0

    .line 105
    float-to-int v3, v1

    .line 106
    float-to-int v4, v10

    .line 107
    float-to-int v5, v12

    .line 108
    move-object v0, p0

    .line 109
    move-object v1, p0

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7a

    .line 116
    iput v10, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 118
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 120
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 122
    return v8

    .line 123
    :cond_7a
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 125
    int-to-float v1, v0

    .line 126
    cmpl-float v1, v11, v1

    .line 128
    if-lez v1, :cond_a7

    .line 130
    const/high16 v1, 0x3f000000  # 0.5f

    .line 132
    mul-float/2addr v11, v1

    .line 133
    cmpl-float v1, v11, v13

    .line 135
    if-lez v1, :cond_a7

    .line 137
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 139
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 142
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 145
    if-lez v14, :cond_99

    .line 147
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 149
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 151
    int-to-float v1, v1

    .line 152
    add-float/2addr v0, v1

    .line 153
    goto :goto_9f

    .line 154
    :cond_99
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 156
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 158
    int-to-float v1, v1

    .line 159
    sub-float/2addr v0, v1

    .line 160
    :goto_9f
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 162
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 164
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 167
    goto :goto_ae

    .line 168
    :cond_a7
    int-to-float v0, v0

    .line 169
    cmpl-float v0, v13, v0

    .line 171
    if-lez v0, :cond_ae

    .line 173
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 175
    :cond_ae
    :goto_ae
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 177
    if-eqz v0, :cond_10e

    .line 179
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_10e

    .line 185
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 187
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 190
    goto :goto_10e

    .line 191
    :cond_be
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 194
    move-result v0

    .line 195
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 197
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 202
    move-result v0

    .line 203
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    .line 205
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 207
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 210
    move-result v0

    .line 211
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 213
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 215
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 217
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 219
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->computeScrollOffset()Z

    .line 222
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 224
    if-ne v0, v1, :cond_109

    .line 226
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 228
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->getFinalX()I

    .line 231
    move-result v0

    .line 232
    iget-object v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 234
    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    .line 237
    move-result v1

    .line 238
    sub-int/2addr v0, v1

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 242
    move-result v0

    .line 243
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mCloseEnough:I

    .line 245
    if-le v0, v1, :cond_109

    .line 247
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 249
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 252
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 254
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 257
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 259
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 262
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 265
    goto :goto_10e

    .line 266
    :cond_109
    invoke-direct {p0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 269
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 271
    :cond_10e
    :goto_10e
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 273
    if-nez v0, :cond_118

    .line 275
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 278
    move-result-object v0

    .line 279
    iput-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 281
    :cond_118
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 283
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 286
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 288
    return v0

    .line 289
    :cond_120
    :goto_120
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 292
    return v8
.end method

.method public onLayout(ZIIII)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 9
    sub-int v3, p5, p3

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_20
    const/16 v12, 0x8

    .line 35
    if-ge v10, v1, :cond_b6

    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_b2

    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 53
    iget-boolean v14, v12, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 55
    if-eqz v14, :cond_b2

    .line 57
    iget v12, v12, Landroidx/viewpager/widget/OriginalViewPager$g;->b:I

    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_5c

    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_56

    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_49

    .line 72
    move v14, v4

    .line 73
    goto :goto_6d

    .line 74
    :cond_49
    sub-int v14, v2, v6

    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    goto :goto_68

    .line 87
    :cond_56
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    move-result v14

    .line 91
    add-int/2addr v14, v4

    .line 92
    goto :goto_6d

    .line 93
    :cond_5c
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 96
    move-result v14

    .line 97
    sub-int v14, v2, v14

    .line 99
    div-int/lit8 v14, v14, 0x2

    .line 101
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 104
    move-result v14

    .line 105
    :goto_68
    move/from16 v17, v14

    .line 107
    move v14, v4

    .line 108
    move/from16 v4, v17

    .line 110
    :goto_6d
    const/16 v15, 0x10

    .line 112
    if-eq v12, v15, :cond_8e

    .line 114
    const/16 v15, 0x30

    .line 116
    if-eq v12, v15, :cond_88

    .line 118
    const/16 v15, 0x50

    .line 120
    if-eq v12, v15, :cond_7b

    .line 122
    move v12, v5

    .line 123
    goto :goto_9f

    .line 124
    :cond_7b
    sub-int v12, v3, v7

    .line 126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 129
    move-result v15

    .line 130
    sub-int/2addr v12, v15

    .line 131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 134
    move-result v15

    .line 135
    add-int/2addr v7, v15

    .line 136
    goto :goto_9a

    .line 137
    :cond_88
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 140
    move-result v12

    .line 141
    add-int/2addr v12, v5

    .line 142
    goto :goto_9f

    .line 143
    :cond_8e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 146
    move-result v12

    .line 147
    sub-int v12, v3, v12

    .line 149
    div-int/lit8 v12, v12, 0x2

    .line 151
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 154
    move-result v12

    .line 155
    :goto_9a
    move/from16 v17, v12

    .line 157
    move v12, v5

    .line 158
    move/from16 v5, v17

    .line 160
    :goto_9f
    add-int/2addr v4, v8

    .line 161
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    move-result v15

    .line 165
    add-int/2addr v15, v4

    .line 166
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 169
    move-result v16

    .line 170
    add-int v9, v16, v5

    .line 172
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 175
    add-int/lit8 v11, v11, 0x1

    .line 177
    move v5, v12

    .line 178
    move v4, v14

    .line 179
    :cond_b2
    add-int/lit8 v10, v10, 0x1

    .line 181
    goto/16 :goto_20

    .line 183
    :cond_b6
    sub-int/2addr v2, v4

    .line 184
    sub-int/2addr v2, v6

    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_b9
    if-ge v6, v1, :cond_106

    .line 188
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 195
    move-result v9

    .line 196
    if-eq v9, v12, :cond_103

    .line 198
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    move-result-object v9

    .line 202
    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 204
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 206
    if-nez v10, :cond_103

    .line 208
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 211
    move-result-object v10

    .line 212
    if-eqz v10, :cond_103

    .line 214
    int-to-float v13, v2

    .line 215
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 217
    mul-float/2addr v10, v13

    .line 218
    float-to-int v10, v10

    .line 219
    add-int/2addr v10, v4

    .line 220
    iget-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$g;->d:Z

    .line 222
    if-eqz v14, :cond_f6

    .line 224
    const/4 v14, 0x0

    .line 225
    iput-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$g;->d:Z

    .line 227
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$g;->c:F

    .line 229
    mul-float/2addr v13, v9

    .line 230
    float-to-int v9, v13

    .line 231
    const/high16 v13, 0x40000000  # 2.0f

    .line 233
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 236
    move-result v9

    .line 237
    sub-int v14, v3, v5

    .line 239
    sub-int/2addr v14, v7

    .line 240
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 243
    move-result v13

    .line 244
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 247
    :cond_f6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 250
    move-result v9

    .line 251
    add-int/2addr v9, v10

    .line 252
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 255
    move-result v13

    .line 256
    add-int/2addr v13, v5

    .line 257
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 260
    :cond_103
    add-int/lit8 v6, v6, 0x1

    .line 262
    goto :goto_b9

    .line 263
    :cond_106
    iput v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    .line 265
    sub-int/2addr v3, v7

    .line 266
    iput v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 268
    iput v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 270
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 272
    if-eqz v1, :cond_118

    .line 274
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 276
    const/4 v2, 0x0

    .line 277
    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    const/4 v2, 0x0

    .line 282
    :goto_119
    iput-boolean v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 284
    return-void
.end method

.method public onMeasure(II)V
    .registers 16

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 5
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 19
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p2

    .line 25
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    move-result p2

    .line 36
    sub-int/2addr p1, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    move-result v1

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 49
    move-result v1

    .line 50
    sub-int/2addr p2, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    move-result v1

    .line 55
    move v2, v0

    .line 56
    :goto_37
    const/16 v3, 0x8

    .line 58
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x40000000  # 2.0f

    .line 61
    if-ge v2, v1, :cond_af

    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result v7

    .line 71
    if-eq v7, v3, :cond_ac

    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 79
    if-eqz v3, :cond_ac

    .line 81
    iget-boolean v7, v3, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 83
    if-eqz v7, :cond_ac

    .line 85
    iget v7, v3, Landroidx/viewpager/widget/OriginalViewPager$g;->b:I

    .line 87
    and-int/lit8 v8, v7, 0x7

    .line 89
    and-int/lit8 v7, v7, 0x70

    .line 91
    const/16 v9, 0x30

    .line 93
    if-eq v7, v9, :cond_65

    .line 95
    const/16 v9, 0x50

    .line 97
    if-ne v7, v9, :cond_63

    .line 99
    goto :goto_65

    .line 100
    :cond_63
    move v7, v0

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    :goto_65
    move v7, v4

    .line 103
    :goto_66
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_6e

    .line 106
    const/4 v9, 0x5

    .line 107
    if-ne v8, v9, :cond_6d

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v4, v0

    .line 111
    :cond_6e
    :goto_6e
    const/high16 v8, -0x80000000

    .line 113
    if-eqz v7, :cond_75

    .line 115
    move v9, v8

    .line 116
    move v8, v5

    .line 117
    goto :goto_7a

    .line 118
    :cond_75
    if-eqz v4, :cond_79

    .line 120
    move v9, v5

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v9, v8

    .line 123
    :goto_7a
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    const/4 v11, -0x1

    .line 126
    const/4 v12, -0x2

    .line 127
    if-eq v10, v12, :cond_86

    .line 129
    if-eq v10, v11, :cond_83

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    move v10, p1

    .line 133
    :goto_84
    move v8, v5

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move v10, p1

    .line 136
    :goto_87
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    if-eq v3, v12, :cond_90

    .line 140
    if-eq v3, v11, :cond_8e

    .line 142
    goto :goto_92

    .line 143
    :cond_8e
    move v3, p2

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    move v3, p2

    .line 146
    move v5, v9

    .line 147
    :goto_92
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 150
    move-result v8

    .line 151
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 154
    move-result v3

    .line 155
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 158
    if-eqz v7, :cond_a5

    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    move-result v3

    .line 164
    sub-int/2addr p2, v3

    .line 165
    goto :goto_ac

    .line 166
    :cond_a5
    if-eqz v4, :cond_ac

    .line 168
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 171
    move-result v3

    .line 172
    sub-int/2addr p1, v3

    .line 173
    :cond_ac
    :goto_ac
    add-int/lit8 v2, v2, 0x1

    .line 175
    goto :goto_37

    .line 176
    :cond_af
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 179
    move-result v1

    .line 180
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildWidthMeasureSpec:I

    .line 182
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 185
    move-result p2

    .line 186
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 188
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 190
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 193
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 198
    move-result p2

    .line 199
    :goto_c6
    if-ge v0, p2, :cond_ef

    .line 201
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 208
    move-result v2

    .line 209
    if-eq v2, v3, :cond_ec

    .line 211
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 217
    if-eqz v2, :cond_de

    .line 219
    iget-boolean v4, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 221
    if-nez v4, :cond_ec

    .line 223
    :cond_de
    int-to-float v4, p1

    .line 224
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->c:F

    .line 226
    mul-float/2addr v4, v2

    .line 227
    float-to-int v2, v4

    .line 228
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 231
    move-result v2

    .line 232
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 234
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 237
    :cond_ec
    add-int/lit8 v0, v0, 0x1

    .line 239
    goto :goto_c6

    .line 240
    :cond_ef
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 16

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_6b

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v5

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v6

    .line 27
    move v7, v2

    .line 28
    :goto_1b
    if-ge v7, v6, :cond_6b

    .line 30
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 40
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 42
    if-nez v10, :cond_2c

    .line 44
    goto :goto_68

    .line 45
    :cond_2c
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$g;->b:I

    .line 47
    and-int/lit8 v9, v9, 0x7

    .line 49
    if-eq v9, v1, :cond_4d

    .line 51
    const/4 v10, 0x3

    .line 52
    if-eq v9, v10, :cond_47

    .line 54
    const/4 v10, 0x5

    .line 55
    if-eq v9, v10, :cond_3a

    .line 57
    move v9, v3

    .line 58
    goto :goto_5c

    .line 59
    :cond_3a
    sub-int v9, v5, v4

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    move-result v10

    .line 65
    sub-int/2addr v9, v10

    .line 66
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 69
    move-result v10

    .line 70
    add-int/2addr v4, v10

    .line 71
    goto :goto_59

    .line 72
    :cond_47
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 75
    move-result v9

    .line 76
    add-int/2addr v9, v3

    .line 77
    goto :goto_5c

    .line 78
    :cond_4d
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    move-result v9

    .line 82
    sub-int v9, v5, v9

    .line 84
    div-int/lit8 v9, v9, 0x2

    .line 86
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 89
    move-result v9

    .line 90
    :goto_59
    move v11, v9

    .line 91
    move v9, v3

    .line 92
    move v3, v11

    .line 93
    :goto_5c
    add-int/2addr v3, v0

    .line 94
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 97
    move-result v10

    .line 98
    sub-int/2addr v3, v10

    .line 99
    if-eqz v3, :cond_67

    .line 101
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 104
    :cond_67
    move v3, v9

    .line 105
    :goto_68
    add-int/lit8 v7, v7, 0x1

    .line 107
    goto :goto_1b

    .line 108
    :cond_6b
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageScrolled(IFI)V

    .line 111
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$k;

    .line 113
    if-eqz p1, :cond_98

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 121
    move-result p1

    .line 122
    :goto_79
    if-ge v2, p1, :cond_98

    .line 124
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    move-result-object p3

    .line 132
    check-cast p3, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 134
    iget-boolean p3, p3, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 136
    if-eqz p3, :cond_8a

    .line 138
    goto :goto_95

    .line 139
    :cond_8a
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 142
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 145
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$k;

    .line 147
    invoke-interface {p2}, Landroidx/viewpager/widget/OriginalViewPager$k;->a()V

    .line 150
    :goto_95
    add-int/lit8 v2, v2, 0x1

    .line 152
    goto :goto_79

    .line 153
    :cond_98
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 155
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_f

    .line 12
    move v3, v0

    .line 13
    move v0, v2

    .line 14
    move v1, v4

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    add-int/lit8 v0, v0, -0x1

    .line 18
    move v1, v3

    .line 19
    :goto_12
    if-eq v0, v3, :cond_33

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_31

    .line 31
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_31

    .line 37
    iget v6, v6, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 39
    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 41
    if-ne v6, v7, :cond_31

    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_31

    .line 49
    return v4

    .line 50
    :cond_31
    add-int/2addr v0, v1

    .line 51
    goto :goto_12

    .line 52
    :cond_33
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_39

    .line 24
    iget-object v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->c:Landroid/os/Parcelable;

    .line 26
    iget-object v4, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->d:Ljava/lang/ClassLoader;

    .line 28
    invoke-virtual {v0, v3, v4}, Li1/a;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 31
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 33
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 36
    move-result v0

    .line 37
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->a:I

    .line 39
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->b:I

    .line 41
    if-lez p1, :cond_2c

    .line 43
    move p1, v1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move p1, v2

    .line 46
    :goto_2d
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0, v0, v3, p1, v4}, Landroidx/viewpager/widget/OriginalViewPager;->convertPositionForRTL(IIZZ)I

    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, p1, v2, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    .line 57
    goto :goto_4d

    .line 58
    :cond_39
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->a:I

    .line 60
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 62
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->b:I

    .line 64
    if-lez v0, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v1, v2

    .line 68
    :goto_43
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 70
    iget-object v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->c:Landroid/os/Parcelable;

    .line 72
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 74
    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->d:Ljava/lang/ClassLoader;

    .line 76
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 78
    :goto_4d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 12
    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->a:I

    .line 14
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    .line 17
    move-result v0

    .line 18
    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->b:I

    .line 20
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 22
    if-eqz v0, :cond_1d

    .line 24
    invoke-virtual {v0}, Li1/a;->saveState()Landroid/os/Parcelable;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->c:Landroid/os/Parcelable;

    .line 30
    :cond_1d
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    if-eq p1, p3, :cond_a

    .line 6
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 8
    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    .line 11
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_14

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return v2

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 23
    if-eqz v0, :cond_161

    .line 25
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_20

    .line 31
    goto/16 :goto_161

    .line 33
    :cond_20
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 35
    if-nez v0, :cond_2a

    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 43
    :cond_2a
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 51
    move-result v0

    .line 52
    and-int/lit16 v0, v0, 0xff

    .line 54
    if-eqz v0, :cond_139

    .line 56
    if-eq v0, v1, :cond_ec

    .line 58
    const/4 v3, 0x2

    .line 59
    if-eq v0, v3, :cond_79

    .line 61
    const/4 v3, 0x3

    .line 62
    if-eq v0, v3, :cond_6a

    .line 64
    const/4 v3, 0x5

    .line 65
    if-eq v0, v3, :cond_58

    .line 67
    const/4 v3, 0x6

    .line 68
    if-eq v0, v3, :cond_47

    .line 70
    goto/16 :goto_159

    .line 72
    :cond_47
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 75
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 84
    move-result p1

    .line 85
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 87
    goto/16 :goto_159

    .line 89
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 92
    move-result v0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 96
    move-result v3

    .line 97
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 102
    move-result p1

    .line 103
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 105
    goto/16 :goto_159

    .line 107
    :cond_6a
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 109
    if-eqz p1, :cond_159

    .line 111
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 113
    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    .line 116
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 119
    move-result v2

    .line 120
    goto/16 :goto_159

    .line 122
    :cond_79
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 124
    if-nez v0, :cond_d8

    .line 126
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 131
    move-result v0

    .line 132
    const/4 v3, -0x1

    .line 133
    if-ne v0, v3, :cond_8c

    .line 135
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 138
    move-result v2

    .line 139
    goto/16 :goto_159

    .line 141
    :cond_8c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 144
    move-result v3

    .line 145
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 147
    sub-float v4, v3, v4

    .line 149
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 152
    move-result v4

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 156
    move-result v0

    .line 157
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 159
    sub-float v5, v0, v5

    .line 161
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 164
    move-result v5

    .line 165
    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 167
    int-to-float v6, v6

    .line 168
    cmpl-float v6, v4, v6

    .line 170
    if-lez v6, :cond_d8

    .line 172
    cmpl-float v4, v4, v5

    .line 174
    if-lez v4, :cond_d8

    .line 176
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 178
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 181
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 183
    sub-float/2addr v3, v4

    .line 184
    const/4 v5, 0x0

    .line 185
    cmpl-float v3, v3, v5

    .line 187
    if-lez v3, :cond_c1

    .line 189
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 191
    int-to-float v3, v3

    .line 192
    add-float/2addr v4, v3

    .line 193
    goto :goto_c5

    .line 194
    :cond_c1
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    .line 196
    int-to-float v3, v3

    .line 197
    sub-float/2addr v4, v3

    .line 198
    :goto_c5
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 200
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 202
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 205
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_d8

    .line 214
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 217
    :cond_d8
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 219
    if-eqz v0, :cond_159

    .line 221
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 226
    move-result v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 230
    move-result p1

    .line 231
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    .line 234
    move-result p1

    .line 235
    or-int/2addr v2, p1

    .line 236
    goto :goto_159

    .line 237
    :cond_ec
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 239
    if-eqz v0, :cond_159

    .line 241
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 243
    const/16 v2, 0x3e8

    .line 245
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    .line 247
    int-to-float v3, v3

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 251
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 253
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 256
    move-result v0

    .line 257
    float-to-int v0, v0

    .line 258
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 260
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    .line 263
    move-result v2

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 267
    move-result v3

    .line 268
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 271
    move-result-object v4

    .line 272
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 274
    int-to-float v5, v5

    .line 275
    int-to-float v2, v2

    .line 276
    div-float/2addr v5, v2

    .line 277
    iget v6, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 279
    int-to-float v3, v3

    .line 280
    div-float/2addr v3, v2

    .line 281
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->e:F

    .line 283
    sub-float/2addr v3, v2

    .line 284
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    .line 286
    add-float/2addr v2, v5

    .line 287
    div-float/2addr v3, v2

    .line 288
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 290
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 293
    move-result v2

    .line 294
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 297
    move-result p1

    .line 298
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 300
    sub-float/2addr p1, v2

    .line 301
    float-to-int p1, p1

    .line 302
    invoke-direct {p0, v6, v3, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->determineTargetPage(IFII)I

    .line 305
    move-result p1

    .line 306
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    .line 309
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    .line 312
    move-result v2

    .line 313
    goto :goto_159

    .line 314
    :cond_139
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 316
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 319
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 321
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 327
    move-result v0

    .line 328
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    .line 330
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 335
    move-result v0

    .line 336
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    .line 338
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 340
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 343
    move-result p1

    .line 344
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 346
    :cond_159
    :goto_159
    if-eqz v2, :cond_160

    .line 348
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 350
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 353
    :cond_160
    return v1

    .line 354
    :cond_161
    :goto_161
    return v2
.end method

.method public pageLeft()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 3
    if-lez v0, :cond_a

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 10
    return v1

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public pageRight()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 7
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v0, v2

    .line 13
    if-ge v1, v0, :cond_15

    .line 15
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 17
    add-int/2addr v0, v2

    .line 18
    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 21
    return v2

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public populate()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    return-void
.end method

.method public populate(I)V
    .registers 16

    .line 2
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_b

    .line 3
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object v0

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 5
    :goto_c
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    if-nez p1, :cond_14

    .line 6
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 7
    :cond_14
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    if-eqz p1, :cond_1c

    .line 8
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 9
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_23

    return-void

    .line 10
    :cond_23
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    invoke-virtual {p1, p0}, Li1/a;->startUpdate(Landroid/view/ViewGroup;)V

    .line 11
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 12
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    invoke-virtual {v3}, Li1/a;->getCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 14
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    if-ne v3, v4, :cond_207

    .line 16
    :goto_45
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_61

    .line 17
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 18
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lt v5, v6, :cond_5e

    if-ne v5, v6, :cond_61

    goto :goto_62

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_61
    const/4 v4, 0x0

    :goto_62
    if-nez v4, :cond_6c

    if-lez v3, :cond_6c

    .line 19
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object v4

    :cond_6c
    const/4 v5, 0x0

    if-eqz v4, :cond_194

    add-int/lit8 v6, v2, -0x1

    if-ltz v6, :cond_7c

    .line 20
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_7d

    :cond_7c
    const/4 v7, 0x0

    .line 21
    :goto_7d
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v8

    const/high16 v9, 0x40000000  # 2.0f

    if-gtz v8, :cond_87

    move v11, v5

    goto :goto_93

    .line 22
    :cond_87
    iget v10, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    sub-float v10, v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    .line 23
    :goto_93
    iget v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    move v12, v5

    :goto_98
    if-ltz v10, :cond_f6

    cmpl-float v13, v12, v11

    if-ltz v13, :cond_c6

    if-ge v10, v1, :cond_c6

    if-nez v7, :cond_a3

    goto :goto_f6

    .line 24
    :cond_a3
    iget v13, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    if-ne v10, v13, :cond_f3

    iget-boolean v13, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->c:Z

    if-nez v13, :cond_f3

    .line 25
    iget-object v13, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    iget-object v13, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    iget-object v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v13, p0, v10, v7}, Li1/a;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v6, :cond_f2

    .line 27
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_f3

    :cond_c6
    if-eqz v7, :cond_dc

    .line 28
    iget v13, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    if-ne v10, v13, :cond_dc

    .line 29
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    add-float/2addr v12, v7

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_f2

    .line 30
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_f3

    :cond_dc
    add-int/lit8 v7, v6, 0x1

    .line 31
    invoke-virtual {p0, v10, v7}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object v7

    .line 32
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    add-float/2addr v12, v7

    add-int/lit8 v2, v2, 0x1

    if-ltz v6, :cond_f2

    .line 33
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_f3

    :cond_f2
    const/4 v7, 0x0

    :cond_f3
    :goto_f3
    add-int/lit8 v10, v10, -0x1

    goto :goto_98

    .line 34
    :cond_f6
    :goto_f6
    iget v1, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    add-int/lit8 v6, v2, 0x1

    cmpg-float v7, v1, v9

    if-gez v7, :cond_188

    .line 35
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10f

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_110

    :cond_10f
    const/4 v7, 0x0

    :goto_110
    if-gtz v8, :cond_114

    move v10, v5

    goto :goto_11c

    .line 36
    :cond_114
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    .line 37
    :goto_11c
    iget v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    :cond_11e
    :goto_11e
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v3, :cond_188

    cmpl-float v9, v1, v10

    if-ltz v9, :cond_150

    if-le v8, p1, :cond_150

    if-nez v7, :cond_12b

    goto :goto_188

    .line 38
    :cond_12b
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    if-ne v8, v9, :cond_11e

    iget-boolean v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->c:Z

    if-nez v9, :cond_11e

    .line 39
    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    iget-object v9, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    iget-object v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v9, p0, v8, v7}, Li1/a;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 41
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_186

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_11e

    :cond_150
    if-eqz v7, :cond_16c

    .line 42
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    if-ne v8, v9, :cond_16c

    .line 43
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    add-float/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    .line 44
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_186

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_11e

    .line 45
    :cond_16c
    invoke-virtual {p0, v8, v6}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 46
    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    add-float/2addr v1, v7

    .line 47
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_186

    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$f;

    goto :goto_11e

    :cond_186
    const/4 v7, 0x0

    goto :goto_11e

    .line 48
    :cond_188
    :goto_188
    invoke-direct {p0, v4, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/OriginalViewPager$f;ILandroidx/viewpager/widget/OriginalViewPager$f;)V

    .line 49
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iget-object v1, v4, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Li1/a;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 50
    :cond_194
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    invoke-virtual {p1, p0}, Li1/a;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_19e
    if-ge v0, p1, :cond_1c7

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 54
    iput v0, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->f:I

    .line 55
    iget-boolean v3, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    if-nez v3, :cond_1c4

    iget v3, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->c:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1c4

    .line 56
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object v1

    if-eqz v1, :cond_1c4

    .line 57
    iget v3, v1, Landroidx/viewpager/widget/OriginalViewPager$f;->d:F

    iput v3, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->c:F

    .line 58
    iget v1, v1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    iput v1, v2, Landroidx/viewpager/widget/OriginalViewPager$g;->e:I

    :cond_1c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_19e

    .line 59
    :cond_1c7
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_206

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1db

    .line 62
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object p1

    goto :goto_1dc

    :cond_1db
    const/4 p1, 0x0

    :goto_1dc
    if-eqz p1, :cond_1e4

    .line 63
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq p1, v0, :cond_206

    :cond_1e4
    const/4 p1, 0x0

    .line 64
    :goto_1e5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_206

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$f;

    move-result-object v1

    if-eqz v1, :cond_203

    .line 67
    iget v1, v1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v1, v2, :cond_203

    const/4 v1, 0x2

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_203

    goto :goto_206

    :cond_203
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e5

    :cond_206
    :goto_206
    return-void

    .line 69
    :cond_207
    :try_start_207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_213
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_207 .. :try_end_213} :catch_214

    goto :goto_21c

    .line 70
    :catch_214
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_21c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    .line 72
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Pager id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/OriginalViewPager$i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :goto_b
    return-void
.end method

.method public setAdapter(Li1/a;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3d

    .line 7
    invoke-virtual {v0, v1}, Li1/a;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 10
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 12
    invoke-virtual {v0, p0}, Li1/a;->startUpdate(Landroid/view/ViewGroup;)V

    .line 15
    move v0, v2

    .line 16
    :goto_f
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v3

    .line 22
    if-ge v0, v3, :cond_2b

    .line 24
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 32
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 34
    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 36
    iget-object v3, v3, Landroidx/viewpager/widget/OriginalViewPager$f;->a:Ljava/lang/Object;

    .line 38
    invoke-virtual {v4, p0, v5, v3}, Li1/a;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_f

    .line 44
    :cond_2b
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 46
    invoke-virtual {v0, p0}, Li1/a;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 49
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->removeNonDecorViews()V

    .line 57
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 59
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 62
    :cond_3d
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 64
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 66
    if-eqz p1, :cond_97

    .line 68
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$l;

    .line 70
    if-nez p1, :cond_4e

    .line 72
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$l;

    .line 74
    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$l;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    .line 77
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$l;

    .line 79
    :cond_4e
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 81
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$l;

    .line 83
    invoke-virtual {p1, v0}, Li1/a;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 86
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 88
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 90
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 93
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 95
    invoke-virtual {v3}, Li1/a;->getCount()I

    .line 98
    move-result v3

    .line 99
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 101
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 103
    if-ltz v3, :cond_8e

    .line 105
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 107
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 109
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 111
    invoke-virtual {p1, v3, v4}, Li1/a;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 114
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    .line 116
    invoke-virtual {p1}, Li1/a;->getCount()I

    .line 119
    move-result p1

    .line 120
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 122
    iget-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 124
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    .line 127
    move-result v5

    .line 128
    invoke-virtual {p0, p1, v3, v4, v5}, Landroidx/viewpager/widget/OriginalViewPager;->convertPositionForRTL(IIZZ)I

    .line 131
    move-result p1

    .line 132
    invoke-virtual {p0, p1, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    .line 135
    const/4 p1, -0x1

    .line 136
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 138
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 140
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 142
    goto :goto_97

    .line 143
    :cond_8e
    if-nez p1, :cond_94

    .line 145
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 148
    goto :goto_97

    .line 149
    :cond_94
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 152
    :cond_97
    :goto_97
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 154
    if-eqz p1, :cond_ba

    .line 156
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_ba

    .line 162
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 167
    move-result p1

    .line 168
    :goto_a7
    if-ge v2, p1, :cond_ba

    .line 170
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$i;

    .line 178
    move-object v1, p0

    .line 179
    check-cast v1, Lmiuix/viewpager/widget/ViewPager;

    .line 181
    invoke-interface {v0}, Landroidx/viewpager/widget/OriginalViewPager$i;->a()V

    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 186
    goto :goto_a7

    .line 187
    :cond_ba
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 2
    iget-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method public setCurrentItemInternal(IZZI)V
    .registers 9

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Li1/a;->getCount()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_6e

    :cond_c
    if-nez p3, :cond_1e

    .line 3
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1e

    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1e

    .line 4
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1e
    const/4 p3, 0x1

    if-gez p1, :cond_23

    move p1, v1

    goto :goto_32

    .line 5
    :cond_23
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    invoke-virtual {v0}, Li1/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_32

    .line 6
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    invoke-virtual {p1}, Li1/a;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 7
    :cond_32
    :goto_32
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 8
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_3d

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_53

    :cond_3d
    move v0, v1

    .line 9
    :goto_3e
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 10
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$f;

    iput-boolean p3, v2, Landroidx/viewpager/widget/OriginalViewPager$f;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 11
    :cond_53
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_58

    move v1, p3

    .line 12
    :cond_58
    iget-boolean p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz p3, :cond_67

    .line 13
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eqz v1, :cond_63

    .line 14
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 15
    :cond_63
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_6d

    .line 16
    :cond_67
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    .line 17
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    :goto_6d
    return-void

    .line 18
    :cond_6e
    :goto_6e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setInternalPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)Landroidx/viewpager/widget/OriginalViewPager$j;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 3
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 5
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ge p1, v0, :cond_22

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "Requested offscreen page limit "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, " too small; defaulting to "

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v1, "ViewPager"

    .line 31
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    move p1, v0

    .line 35
    :cond_22
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 37
    if-eq p1, v0, :cond_2b

    .line 39
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 41
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 44
    :cond_2b
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$j;

    .line 3
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 3
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 3
    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/OriginalViewPager$k;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/OriginalViewPager$k;I)V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/OriginalViewPager$k;I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 2
    :goto_7
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$k;

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    if-eq v2, v3, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v1

    .line 3
    :goto_13
    iput-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$k;

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_22

    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    .line 5
    :cond_1d
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    .line 6
    iput p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformerLayerType:I

    goto :goto_24

    .line 7
    :cond_22
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    :goto_24
    if-eqz v3, :cond_29

    .line 8
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    :cond_29
    return-void
.end method

.method public setScrollState(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 8
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageTransformer:Landroidx/viewpager/widget/OriginalViewPager$k;

    .line 10
    if-eqz v0, :cond_13

    .line 12
    if-eqz p1, :cond_f

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->enableLayers(Z)V

    .line 20
    :cond_13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnScrollStateChanged(I)V

    .line 23
    return-void
.end method

.method public smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method public smoothScrollTo(III)V
    .registers 14

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 4
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_35

    .line 5
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    move-result v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->getStartX()I

    move-result v0

    .line 6
    :goto_2c
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 7
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_39

    .line 8
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 9
    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v4, p1, v0

    sub-int v5, p2, v3

    if-nez v4, :cond_4f

    if-nez v5, :cond_4f

    .line 10
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 11
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 12
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    return-void

    .line 13
    :cond_4f
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 15
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 16
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    int-to-float v5, v0

    int-to-float v6, p1

    int-to-float v7, v3

    int-to-float v8, p2

    neg-int p1, p3

    int-to-float v9, p1

    invoke-virtual/range {v4 .. v9}, Lmiuix/androidbasewidget/widget/SpringScroller;->startScroll(FFFFF)V

    .line 17
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-ne p1, v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method
