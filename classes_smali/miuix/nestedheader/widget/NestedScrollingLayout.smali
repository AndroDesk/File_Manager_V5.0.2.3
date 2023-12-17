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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingV2ConsumedCompat:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    new-array p3, p3, [I

    iput-object p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentScrollConsumed:[I

    const/4 p3, 0x0

    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    iput-wide v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    new-instance v1, Lm0/u;

    invoke-direct {v1}, Lm0/u;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Lm0/u;

    invoke-static {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->obtain(Landroid/view/View;)Lm0/r;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    sget-object v1, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_scrollableView:I

    const v1, 0x102000a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableViewId:I

    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_selfScrollFirst:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_headerClose:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_overScrollTo:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_overScrollToRatio:I

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_scrollType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    return p0
.end method

.method public static synthetic access$020(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I
    .registers 3

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    return v0
.end method

.method public static synthetic access$100(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    return p0
.end method

.method public static synthetic access$200(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    return p0
.end method

.method public static synthetic access$300(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->obtainSpringBackDistance(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method private dispatchScrollingProgressUpdated()V
    .registers 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private nestedPreScrollHeader(II[I)V
    .registers 6

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    move-result v0

    if-ge p1, v0, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    aget v0, p3, p1

    if-le p2, v0, :cond_26

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v0, p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    aget p2, p3, p1

    add-int/2addr p2, v0

    aput p2, p3, p1

    :cond_26
    return-void
.end method

.method private nestedPreScrollParent(II[I[II)V
    .registers 14

    const/4 v0, 0x0

    aget v1, p3, v0

    sub-int v3, p1, v1

    const/4 p1, 0x1

    aget v1, p3, p1

    sub-int v4, p2, v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p2

    if-eqz p2, :cond_22

    aget p2, p3, v0

    aget p5, p4, v0

    add-int/2addr p2, p5

    aput p2, p3, v0

    aget p2, p3, p1

    aget p4, p4, p1

    add-int/2addr p2, p4

    aput p2, p3, p1

    :cond_22
    return-void
.end method

.method private nestedPreScrollSelfAfterParentConsumed(II[I)V
    .registers 7

    const/4 p1, 0x1

    aget v0, p3, p1

    if-le p2, v0, :cond_23

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v0, p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    aget p2, p3, p1

    add-int/2addr p2, v0

    aput p2, p3, p1

    :cond_23
    return-void
.end method

.method private nestedPreScrollTrigger(II[I)V
    .registers 7

    const/4 p1, 0x1

    aget v0, p3, p1

    if-le p2, v0, :cond_25

    const/4 v0, 0x0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int v1, v0, p2

    if-eq v0, p2, :cond_25

    if-ltz v0, :cond_25

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    aget p2, p3, p1

    add-int/2addr p2, v1

    aput p2, p3, p1

    :cond_25
    return-void
.end method

.method private nestedScrollAfterParentConsumed(IIII[II)V
    .registers 14

    if-gez p2, :cond_89

    if-eqz p4, :cond_89

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int p2, p1, p4

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p6, :cond_e

    move p6, p3

    goto :goto_f

    :cond_e
    move p6, p4

    :goto_f
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    if-le p2, v0, :cond_15

    move v1, p3

    goto :goto_16

    :cond_15
    move v1, p4

    :goto_16
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    if-eqz v2, :cond_26

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    if-nez v3, :cond_26

    if-nez p6, :cond_26

    if-eqz v1, :cond_26

    if-ne p1, v0, :cond_26

    move v1, p3

    goto :goto_27

    :cond_26
    move v1, p4

    :goto_27
    if-eqz v2, :cond_37

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    if-nez v3, :cond_37

    if-nez p6, :cond_37

    iget v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    if-lt p1, v3, :cond_37

    if-lt p2, v3, :cond_37

    move p1, p3

    goto :goto_38

    :cond_37
    move p1, p4

    :goto_38
    if-eqz v2, :cond_52

    if-nez p6, :cond_52

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    if-nez v3, :cond_46

    if-ltz p2, :cond_50

    :cond_46
    if-eqz v3, :cond_52

    iget-wide v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    iget-wide v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_52

    :cond_50
    move v3, p3

    goto :goto_53

    :cond_52
    move v3, p4

    :goto_53
    if-nez p6, :cond_5e

    if-eqz v2, :cond_5e

    if-nez p1, :cond_5e

    if-eqz v3, :cond_5c

    goto :goto_5e

    :cond_5c
    move p1, p4

    goto :goto_5f

    :cond_5e
    :goto_5e
    move p1, p3

    :goto_5f
    if-eqz p1, :cond_64

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    goto :goto_69

    :cond_64
    if-eqz v1, :cond_68

    move p1, v0

    goto :goto_69

    :cond_68
    move p1, p4

    :goto_69
    iget-boolean p6, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz p6, :cond_6f

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    :cond_6f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p2, p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    aget p1, p5, p4

    add-int/2addr p1, p4

    aput p1, p5, p4

    aget p1, p5, p3

    add-int/2addr p1, p2

    aput p1, p5, p3

    :cond_89
    return-void
.end method

.method private nestedScrollHeader(II[II)V
    .registers 5

    if-gez p2, :cond_29

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderProgressTo()I

    move-result p4

    if-ge p1, p4, :cond_29

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p1, p2

    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderProgressTo()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p2, p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    const/4 p1, 0x1

    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    :cond_29
    return-void
.end method

.method private nestedScrollSticky(II[II)V
    .registers 5

    if-gez p2, :cond_2d

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getStickyScrollToOnNested()I

    move-result p4

    if-ge p1, p4, :cond_2d

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz p1, :cond_2d

    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p1, p2

    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getStickyScrollToOnNested()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p2, p1

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    const/4 p1, 0x1

    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    :cond_2d
    return-void
.end method

.method private notifyStopNestedScrollAccepted(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStopNestedScrollAccepted(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private obtainDampingDistance(FI)F
    .registers 9

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-float p1, v4

    int-to-float p2, p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private obtainSpringBackDistance(I)I
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr p1, v1

    int-to-float v2, v0

    div-float/2addr p1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->obtainDampingDistance(FI)F

    move-result p1

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private sendStartNestedScroll(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStartNestedScroll(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private sendStopNestedScroll(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    invoke-interface {v1, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStopNestedScroll(I)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

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

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

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

.method public getAcceptedNestedFlingInConsumedProgress()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    return v0
.end method

.method public getHeaderCloseProgress()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    return v0

    :cond_a
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return v0
.end method

.method public getHeaderProgressFrom()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    return v0

    :cond_a
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return v0
.end method

.method public getHeaderProgressTo()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    return v0

    :cond_a
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return v0
.end method

.method public getNestedScrollableValue()I
    .registers 2

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    return v0
.end method

.method public getScrollType()I
    .registers 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    return v0
.end method

.method public getScrollableViewMaxHeightWithoutOverlay()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollingFrom()I
    .registers 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return v0
.end method

.method public getScrollingProgress()I
    .registers 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    return v0
.end method

.method public getScrollingTo()I
    .registers 2

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    return v0
.end method

.method public getStickyScrollToOnNested()I
    .registers 3

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0}, Lm0/r;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_c

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetBottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_15

    :cond_c
    iput v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetBottom:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_15
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_2a

    instance-of v0, v0, Lmiuix/core/view/ScrollStateDispatcher;

    if-eqz v0, :cond_20

    new-instance v0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;

    invoke-direct {v0, p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    check-cast v1, Lmiuix/core/view/ScrollStateDispatcher;

    invoke-interface {v1, v0}, Lmiuix/core/view/ScrollStateDispatcher;->addOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V

    goto :goto_23

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    :goto_23
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_71

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    const/high16 p2, 0x40000000  # 2.0f

    if-nez p1, :cond_54

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollableViewMaxHeightWithoutOverlay()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasure in NoOverlayMode mScrollableView "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " viewHeight "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NestedScrollingLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p1

    if-nez p1, :cond_71

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

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

    invoke-virtual/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 12

    const/4 p1, 0x1

    if-eqz p5, :cond_10

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    :cond_d
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    goto :goto_12

    :cond_10
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    :goto_12
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollTrigger(II[I)V

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz p1, :cond_1c

    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollHeader(II[I)V

    :cond_1c
    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentScrollConsumed:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollParent(II[I[II)V

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

    invoke-virtual/range {v0 .. v6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

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

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-nez p1, :cond_7

    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollHeader(II[II)V

    :cond_7
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    if-eqz p1, :cond_e

    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollSticky(II[II)V

    :cond_e
    const/4 p1, 0x0

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

    aget p1, p7, p1

    sub-int v4, p5, p1

    move v1, p4

    move v2, p5

    move v3, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollAfterParentConsumed(IIII[II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Lm0/u;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lm0/u;->a(II)V

    and-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    if-eqz p4, :cond_9

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

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

    :goto_9
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v1, p3}, Lm0/r;->startNestedScroll(I)Z

    move-result p3

    if-nez p3, :cond_1b

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

    invoke-direct {p0, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->sendStartNestedScroll(I)V

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

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Lm0/u;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_9

    iput v1, p1, Lm0/u;->b:I

    goto :goto_b

    :cond_9
    iput v1, p1, Lm0/u;->a:I

    :goto_b
    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->sendStopNestedScroll(I)V

    invoke-virtual {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    if-eqz p1, :cond_22

    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    if-nez p1, :cond_20

    goto :goto_28

    :cond_20
    move v0, v1

    goto :goto_28

    :cond_22
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-eqz p1, :cond_28

    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    :cond_28
    :goto_28
    if-eqz v0, :cond_2d

    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->notifyStopNestedScrollAccepted(I)V

    :cond_2d
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .registers 6

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method public removeOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnableOverScrollTo(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    instance-of v0, v0, Lmiuix/core/view/ScrollStateDispatcher;

    if-eqz v0, :cond_8

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    :cond_8
    return-void
.end method

.method public setHeaderCloseOnInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOverScrollToRatio(F)V
    .registers 2

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    return-void
.end method

.method public setScrollType(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/nestedheader/widget/ScrollType;
        .end annotation
    .end param

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    return-void
.end method

.method public setScrollingRange(IIZZZZZZZ)V
    .registers 10

    if-le p1, p2, :cond_a

    const-string p1, "NestedScrollingLayout"

    const-string p8, "wrong scrolling range: [%d, %d], making from=to"

    invoke-static {p1, p8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    :cond_a
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    iput-boolean p4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    iput-boolean p5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    iget p4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-ge p4, p1, :cond_1a

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    :cond_1a
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-le p1, p2, :cond_22

    if-ltz p2, :cond_22

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    :cond_22
    const/4 p1, 0x0

    if-eqz p6, :cond_2b

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    if-eqz p2, :cond_2b

    const/4 p2, 0x1

    goto :goto_2c

    :cond_2b
    move p2, p1

    :goto_2c
    if-nez p2, :cond_32

    if-nez p7, :cond_32

    if-eqz p9, :cond_48

    :cond_32
    if-eqz p3, :cond_48

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    if-eqz p2, :cond_43

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    if-eqz p2, :cond_43

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    goto :goto_45

    :cond_43
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    :goto_45
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    goto :goto_50

    :cond_48
    if-nez p2, :cond_4c

    if-eqz p7, :cond_50

    :cond_4c
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    :cond_50
    :goto_50
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method public setSelfScrollFirst(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1, p2}, Lm0/r;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0}, Lm0/r;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Lm0/r;

    invoke-virtual {v0, p1}, Lm0/r;->stopNestedScroll(I)V

    return-void
.end method

.method public updateCoordinatorHeightGapInfo(II)V
    .registers 3

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    return-void
.end method

.method public updateHeaderOpen(Z)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    :cond_c
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    return-void
.end method

.method public updateScrollingProgress(I)V
    .registers 2

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    return-void
.end method
