.class public Lmiuix/nestedheader/widget/NestedScrollingLayout;
.super Landroid/widget/FrameLayout;
.source "NestedScrollingLayout.java"

# interfaces
.implements Lm0/t;
.implements Lm0/p;
.implements Lmiuix/core/view/NestedCoordinatorObserver;
.implements Lmiuix/core/view/NestedContentInsetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NestedScrollingLayout"


# instance fields
.field public mContentInsetBottom:I

.field public mContentInsetTop:I

.field public mCoordinatorHeightTotalGap:I

.field public mCurrentCoordinatorHeightGap:I

.field public mEnableOverScrollTo:Z

.field public mHeaderCloseOnInit:Z

.field private mHeaderOpenTime:J

.field private mHeaderViewVisible:Z

.field public mInSearchMode:Z

.field private mIsFirstSetScrollingRange:Z

.field private mIsHeaderOpen:Z

.field public mIsOverlayMode:Z

.field public mIsSelfScrollFirst:Z

.field private mNestedFlingInConsumedProgress:Z

.field private mNestedFlingStartInConsumedTime:J

.field private mNestedScrollAcceptedFling:Z

.field private mNestedScrollInConsumedProgress:Z

.field private final mNestedScrollingChildHelper:Lm0/r;

.field private final mNestedScrollingParentHelper:Lm0/u;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field private mOnNestedChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

.field public mOverScrollToRatio:F

.field public mOverScrollingTo:I

.field public final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mPreOverScrollingTo:I

.field private mScrollType:I

.field public mScrollableView:Landroid/view/View;

.field private mScrollableViewId:I

.field private mScrollingFrom:I

.field private mScrollingProgress:I

.field private mScrollingTo:I

.field private mStickyViewVisible:Z

.field private mTriggerViewVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 4
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingV2ConsumedCompat:[I

    new-array v0, p3, [I

    .line 5
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    new-array p3, p3, [I

    .line 6
    iput-object p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentScrollConsumed:[I

    const/4 p3, 0x0

    .line 7
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    .line 8
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 9
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 10
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    .line 13
    iput-wide v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    .line 14
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    .line 15
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 16
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    .line 17
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 20
    new-instance v1, Lm0/u;

    invoke-direct {v1}, Lm0/u;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Lm0/u;

    .line 21
    invoke-static {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->obtain(Landroid/view/View;)Lm0/r;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 22
    sget-object v1, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 23
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_scrollableView:I

    const v1, 0x102000a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableViewId:I

    .line 24
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_selfScrollFirst:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 25
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_headerClose:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    .line 26
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_overScrollTo:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 27
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_overScrollToRatio:I

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    .line 28
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_scrollType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    .line 3
    return p0
.end method

.method public static synthetic access$020(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    .line 6
    return v0
.end method

.method public static synthetic access$100(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->obtainSpringBackDistance(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 4
    return-void
.end method

.method private dispatchScrollingProgressUpdated()V
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    .line 6
    return-void
.end method

.method private nestedPreScrollHeader(II[I)V
    .registers 6

    .line 1
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 3
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    aget v0, p3, p1

    .line 13
    if-le p2, v0, :cond_26

    .line 15
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 21
    sub-int/2addr v1, p2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p2

    .line 26
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 28
    sub-int/2addr v0, p2

    .line 29
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 31
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 34
    aget p2, p3, p1

    .line 36
    add-int/2addr p2, v0

    .line 37
    aput p2, p3, p1

    .line 39
    :cond_26
    return-void
.end method

.method private nestedPreScrollParent(II[I[II)V
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p3, v0

    .line 4
    sub-int v3, p1, v1

    .line 6
    const/4 p1, 0x1

    .line 7
    aget v1, p3, p1

    .line 9
    sub-int v4, p2, v1

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v2, p0

    .line 13
    move-object v5, p4

    .line 14
    move v7, p5

    .line 15
    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_22

    .line 21
    aget p2, p3, v0

    .line 23
    aget p5, p4, v0

    .line 25
    add-int/2addr p2, p5

    .line 26
    aput p2, p3, v0

    .line 28
    aget p2, p3, p1

    .line 30
    aget p4, p4, p1

    .line 32
    add-int/2addr p2, p4

    .line 33
    aput p2, p3, p1

    .line 35
    :cond_22
    return-void
.end method

.method private nestedPreScrollSelfAfterParentConsumed(II[I)V
    .registers 7

    .line 1
    const/4 p1, 0x1

    .line 2
    aget v0, p3, p1

    .line 4
    if-le p2, v0, :cond_23

    .line 6
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 12
    iget v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 14
    sub-int/2addr v2, p2

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result p2

    .line 19
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p2

    .line 23
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 25
    sub-int/2addr v0, p2

    .line 26
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 28
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 31
    aget p2, p3, p1

    .line 33
    add-int/2addr p2, v0

    .line 34
    aput p2, p3, p1

    .line 36
    :cond_23
    return-void
.end method

.method private nestedPreScrollTrigger(II[I)V
    .registers 7

    .line 1
    const/4 p1, 0x1

    .line 2
    aget v0, p3, p1

    .line 4
    if-le p2, v0, :cond_25

    .line 6
    const/4 v0, 0x0

    .line 7
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 9
    iget v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 11
    sub-int/2addr v2, p2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 15
    move-result p2

    .line 16
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result p2

    .line 20
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 22
    sub-int v1, v0, p2

    .line 24
    if-eq v0, p2, :cond_25

    .line 26
    if-ltz v0, :cond_25

    .line 28
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 30
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 33
    aget p2, p3, p1

    .line 35
    add-int/2addr p2, v1

    .line 36
    aput p2, p3, p1

    .line 38
    :cond_25
    return-void
.end method

.method private nestedScrollAfterParentConsumed(IIII[II)V
    .registers 14

    .line 1
    if-gez p2, :cond_89

    .line 3
    if-eqz p4, :cond_89

    .line 5
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 7
    sub-int p2, p1, p4

    .line 9
    const/4 p3, 0x1

    .line 10
    const/4 p4, 0x0

    .line 11
    if-nez p6, :cond_e

    .line 13
    move p6, p3

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move p6, p4

    .line 16
    :goto_f
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 18
    if-le p2, v0, :cond_15

    .line 20
    move v1, p3

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, p4

    .line 23
    :goto_16
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    .line 25
    if-eqz v2, :cond_26

    .line 27
    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 29
    if-nez v3, :cond_26

    .line 31
    if-nez p6, :cond_26

    .line 33
    if-eqz v1, :cond_26

    .line 35
    if-ne p1, v0, :cond_26

    .line 37
    move v1, p3

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, p4

    .line 40
    :goto_27
    if-eqz v2, :cond_37

    .line 42
    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 44
    if-nez v3, :cond_37

    .line 46
    if-nez p6, :cond_37

    .line 48
    iget v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 50
    if-lt p1, v3, :cond_37

    .line 52
    if-lt p2, v3, :cond_37

    .line 54
    move p1, p3

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move p1, p4

    .line 57
    :goto_38
    if-eqz v2, :cond_52

    .line 59
    if-nez p6, :cond_52

    .line 61
    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 63
    if-eqz v3, :cond_52

    .line 65
    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    .line 67
    if-nez v3, :cond_46

    .line 69
    if-ltz p2, :cond_50

    .line 71
    :cond_46
    if-eqz v3, :cond_52

    .line 73
    iget-wide v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    .line 75
    iget-wide v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    .line 77
    cmp-long v3, v3, v5

    .line 79
    if-gtz v3, :cond_52

    .line 81
    :cond_50
    move v3, p3

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v3, p4

    .line 84
    :goto_53
    if-nez p6, :cond_5e

    .line 86
    if-eqz v2, :cond_5e

    .line 88
    if-nez p1, :cond_5e

    .line 90
    if-eqz v3, :cond_5c

    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    move p1, p4

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    :goto_5e
    move p1, p3

    .line 96
    :goto_5f
    if-eqz p1, :cond_64

    .line 98
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 100
    goto :goto_69

    .line 101
    :cond_64
    if-eqz v1, :cond_68

    .line 103
    move p1, v0

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move p1, p4

    .line 106
    :goto_69
    iget-boolean p6, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    .line 108
    if-eqz p6, :cond_6f

    .line 110
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 112
    :cond_6f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 115
    move-result p1

    .line 116
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 119
    move-result p1

    .line 120
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 122
    sub-int/2addr p2, p1

    .line 123
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 125
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 128
    aget p1, p5, p4

    .line 130
    add-int/2addr p1, p4

    .line 131
    aput p1, p5, p4

    .line 133
    aget p1, p5, p3

    .line 135
    add-int/2addr p1, p2

    .line 136
    aput p1, p5, p3

    .line 138
    :cond_89
    return-void
.end method

.method private nestedScrollHeader(II[II)V
    .registers 5

    .line 1
    if-gez p2, :cond_29

    .line 3
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 5
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderProgressTo()I

    .line 8
    move-result p4

    .line 9
    if-ge p1, p4, :cond_29

    .line 11
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 13
    sub-int/2addr p1, p2

    .line 14
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 16
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderProgressTo()I

    .line 19
    move-result p4

    .line 20
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result p1

    .line 24
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    move-result p1

    .line 28
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 30
    sub-int/2addr p2, p1

    .line 31
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 33
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 36
    const/4 p1, 0x1

    .line 37
    aget p4, p3, p1

    .line 39
    add-int/2addr p4, p2

    .line 40
    aput p4, p3, p1

    .line 42
    :cond_29
    return-void
.end method

.method private nestedScrollSticky(II[II)V
    .registers 5

    .line 1
    if-gez p2, :cond_2d

    .line 3
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 5
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getStickyScrollToOnNested()I

    .line 8
    move-result p4

    .line 9
    if-ge p1, p4, :cond_2d

    .line 11
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 13
    if-eqz p1, :cond_2d

    .line 15
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 17
    sub-int/2addr p1, p2

    .line 18
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 20
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getStickyScrollToOnNested()I

    .line 23
    move-result p4

    .line 24
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    .line 27
    move-result p1

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p1

    .line 32
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 34
    sub-int/2addr p2, p1

    .line 35
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 37
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 40
    const/4 p1, 0x1

    .line 41
    aget p4, p3, p1

    .line 43
    add-int/2addr p4, p2

    .line 44
    aput p4, p3, p1

    .line 46
    :cond_2d
    return-void
.end method

.method private notifyStopNestedScrollAccepted(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStopNestedScrollAccepted(I)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method private obtainDampingDistance(FI)F
    .registers 9

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 6
    move-result p1

    .line 7
    float-to-double v0, p1

    .line 8
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 13
    move-result-wide v4

    .line 14
    div-double/2addr v4, v2

    .line 15
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 20
    move-result-wide v2

    .line 21
    sub-double/2addr v4, v2

    .line 22
    add-double/2addr v4, v0

    .line 23
    double-to-float p1, v4

    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr p1, p2

    .line 26
    return p1
.end method

.method private obtainSpringBackDistance(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    const/high16 v1, 0x3f800000  # 1.0f

    .line 12
    mul-float/2addr p1, v1

    .line 13
    int-to-float v2, v0

    .line 14
    div-float/2addr p1, v2

    .line 15
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->obtainDampingDistance(FI)F

    .line 22
    move-result p1

    .line 23
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    .line 25
    mul-float/2addr p1, v0

    .line 26
    float-to-int p1, p1

    .line 27
    return p1
.end method

.method private sendStartNestedScroll(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStartNestedScroll(I)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method private sendStopNestedScroll(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStopNestedScroll(I)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 16

    .line 3
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

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

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lm0/r;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public getAcceptedNestedFlingInConsumedProgress()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    .line 3
    return v0
.end method

.method public getHeaderCloseProgress()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 7
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0

    .line 11
    :cond_a
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 13
    return v0
.end method

.method public getHeaderProgressFrom()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 7
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0

    .line 11
    :cond_a
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 13
    return v0
.end method

.method public getHeaderProgressTo()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 7
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0

    .line 11
    :cond_a
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 13
    return v0
.end method

.method public getNestedScrollableValue()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getScrollType()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    .line 3
    return v0
.end method

.method public getScrollableViewMaxHeightWithoutOverlay()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getScrollingFrom()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 3
    return v0
.end method

.method public getScrollingProgress()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 3
    return v0
.end method

.method public getScrollingTo()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 3
    return v0
.end method

.method public getStickyScrollToOnNested()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 3
    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->hasNestedScrollingParent(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0}, Lm0/r;->isNestedScrollingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5
    if-ne v0, v1, :cond_c

    .line 7
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetBottom:I

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    if-eq v0, v2, :cond_15

    .line 13
    :cond_c
    iput v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 15
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 17
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetBottom:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    :cond_15
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableViewId:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_2a

    .line 14
    instance-of v0, v0, Lmiuix/core/view/ScrollStateDispatcher;

    .line 16
    if-eqz v0, :cond_20

    .line 18
    new-instance v0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;

    .line 20
    invoke-direct {v0, p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V

    .line 23
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 25
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 27
    check-cast v1, Lmiuix/core/view/ScrollStateDispatcher;

    .line 29
    invoke-interface {v1, v0}, Lmiuix/core/view/ScrollStateDispatcher;->addOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 36
    :goto_23
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string v1, "The scrollableView attribute is required and must refer to a valid child."

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    invoke-virtual/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    .line 7
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    const/4 p2, -0x1

    .line 13
    if-ne p1, p2, :cond_71

    .line 15
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    .line 17
    const/high16 p2, 0x40000000  # 2.0f

    .line 19
    if-nez p1, :cond_54

    .line 21
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result p1

    .line 27
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollableViewMaxHeightWithoutOverlay()I

    .line 34
    move-result v0

    .line 35
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    move-result p2

    .line 39
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string p2, "onMeasure in NoOverlayMode mScrollableView "

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    move-result p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string p2, " viewHeight "

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    const-string p2, "NestedScrollingLayout"

    .line 81
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_71

    .line 85
    :cond_54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_71

    .line 91
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 96
    move-result p1

    .line 97
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    move-result v0

    .line 105
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 108
    move-result p2

    .line 109
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 111
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 114
    :cond_71
    :goto_71
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 12

    const/4 p1, 0x1

    if-eqz p5, :cond_10

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-nez v0, :cond_d

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    .line 3
    :cond_d
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    goto :goto_12

    .line 4
    :cond_10
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    .line 5
    :goto_12
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollTrigger(II[I)V

    .line 6
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz p1, :cond_1c

    .line 7
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollHeader(II[I)V

    .line 8
    :cond_1c
    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentScrollConsumed:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollParent(II[I[II)V

    .line 9
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollSelfAfterParentConsumed(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

    .line 2
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 16

    .line 3
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-nez p1, :cond_7

    .line 4
    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollHeader(II[II)V

    .line 5
    :cond_7
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    if-eqz p1, :cond_e

    .line 6
    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollSticky(II[II)V

    :cond_e
    const/4 p1, 0x0

    .line 7
    aget v1, p7, p1

    const/4 p1, 0x1

    aget v2, p7, p1

    sub-int v3, p4, v1

    sub-int v4, p5, v2

    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 8
    aget p1, p7, p1

    sub-int v4, p5, p1

    move v1, p4

    move v2, p5

    move v3, p4

    move-object v5, p7

    .line 9
    invoke-direct/range {v0 .. v6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollAfterParentConsumed(IIII[II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 4
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Lm0/u;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p3, p2}, Lm0/u;->a(II)V

    and-int/lit8 p1, p3, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    if-eqz p4, :cond_9

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    :goto_c
    return-void
.end method

.method public onScrollingProgressUpdated(I)V
    .registers 2

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    move p1, p2

    goto :goto_9

    :cond_8
    move p1, v0

    .line 3
    :goto_9
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v1, p3}, Lm0/r;->startNestedScroll(I)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1a

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move p2, v0

    :cond_1b
    :goto_1b
    return p2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 1
    invoke-direct {p0, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->sendStartNestedScroll(I)V

    .line 2
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {p2, p3, p4}, Lm0/r;->startNestedScroll(II)Z

    move-result p2

    if-nez p2, :cond_14

    invoke-virtual {p0, p1, p1, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Lm0/u;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p2, v0, :cond_9

    .line 7
    iput v1, p1, Lm0/u;->b:I

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iput v1, p1, Lm0/u;->a:I

    .line 12
    :goto_b
    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->sendStopNestedScroll(I)V

    .line 15
    invoke-virtual {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 18
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    .line 20
    if-eqz p1, :cond_22

    .line 22
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    .line 24
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    .line 26
    if-nez p1, :cond_20

    .line 28
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    .line 30
    if-nez p1, :cond_20

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    move v0, v1

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    .line 37
    if-eqz p1, :cond_28

    .line 39
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    .line 41
    :cond_28
    :goto_28
    if-eqz v0, :cond_2d

    .line 43
    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->notifyStopNestedScrollAccepted(I)V

    .line 46
    :cond_2d
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 4
    return-void
.end method

.method public removeOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setEnableOverScrollTo(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    .line 3
    instance-of v0, v0, Lmiuix/core/view/ScrollStateDispatcher;

    .line 5
    if-eqz v0, :cond_8

    .line 7
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 9
    :cond_8
    return-void
.end method

.method public setHeaderCloseOnInit(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    .line 3
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOverScrollToRatio(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    .line 3
    return-void
.end method

.method public setScrollType(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/nestedheader/widget/ScrollType;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    .line 3
    return-void
.end method

.method public setScrollingRange(IIZZZZZZZ)V
    .registers 10

    .line 1
    if-le p1, p2, :cond_a

    .line 3
    const-string p1, "NestedScrollingLayout"

    .line 5
    const-string p8, "wrong scrolling range: [%d, %d], making from=to"

    .line 7
    invoke-static {p1, p8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    move p1, p2

    .line 11
    :cond_a
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 13
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 15
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 17
    iput-boolean p4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    .line 19
    iput-boolean p5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    .line 21
    iget p4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 23
    if-ge p4, p1, :cond_1a

    .line 25
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 27
    :cond_1a
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 29
    if-le p1, p2, :cond_22

    .line 31
    if-ltz p2, :cond_22

    .line 33
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    if-eqz p6, :cond_2b

    .line 38
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    .line 40
    if-eqz p2, :cond_2b

    .line 42
    const/4 p2, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move p2, p1

    .line 45
    :goto_2c
    if-nez p2, :cond_32

    .line 47
    if-nez p7, :cond_32

    .line 49
    if-eqz p9, :cond_48

    .line 51
    :cond_32
    if-eqz p3, :cond_48

    .line 53
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    .line 55
    if-eqz p2, :cond_43

    .line 57
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    .line 59
    if-eqz p2, :cond_43

    .line 61
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    .line 64
    move-result p2

    .line 65
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 70
    :goto_45
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    .line 72
    goto :goto_50

    .line 73
    :cond_48
    if-nez p2, :cond_4c

    .line 75
    if-eqz p7, :cond_50

    .line 77
    :cond_4c
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 79
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    .line 81
    :cond_50
    :goto_50
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 84
    return-void
.end method

.method public setSelfScrollFirst(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 3
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1, p2}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 2
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0}, Lm0/r;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method

.method public updateCoordinatorHeightGapInfo(II)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 3
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    .line 5
    return-void
.end method

.method public updateHeaderOpen(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    if-eqz p1, :cond_c

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    .line 13
    :cond_c
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    .line 15
    return-void
.end method

.method public updateScrollingProgress(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 3
    return-void
.end method
