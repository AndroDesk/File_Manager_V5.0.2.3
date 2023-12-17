.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexContainer;
.implements Landroidx/recyclerview/widget/RecyclerView$x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FlexboxLayoutManager"

.field private static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlignItems:I

.field private mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

.field private final mContext:Landroid/content/Context;

.field private mDirtyPosition:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private final mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field private mFromBottomToTop:Z

.field private mIsRtl:Z

.field private mJustifyContent:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

.field private mMaxLine:I

.field private mOrientationHelper:Landroidx/recyclerview/widget/p;

.field private mParent:Landroid/view/View;

.field private mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

.field private mState:Landroidx/recyclerview/widget/RecyclerView$y;

.field private mSubOrientationHelper:Landroidx/recyclerview/widget/p;

.field private mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 6
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 7
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 8
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 9
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 10
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 11
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 12
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 13
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 14
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 16
    invoke-virtual {p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p2, 0x4

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 19
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 23
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 24
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 25
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 26
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 27
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 28
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 29
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 30
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 31
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 32
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    .line 33
    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x1

    if-eqz p3, :cond_50

    if-eq p3, p4, :cond_42

    goto :goto_5c

    .line 34
    :cond_42
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_4b

    const/4 p2, 0x3

    .line 35
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_5c

    :cond_4b
    const/4 p2, 0x2

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_5c

    .line 37
    :cond_50
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_58

    .line 38
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_5c

    :cond_58
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 40
    :goto_5c
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p2, 0x4

    .line 41
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 42
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 43
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 3
    return p0
.end method

.method public static synthetic access$2900(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 3
    return p0
.end method

.method public static synthetic access$3000(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 3
    return p0
.end method

.method public static synthetic access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3300(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/FlexboxHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3400(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private canViewBeRecycledFromEnd(Landroid/view/View;I)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_17

    .line 9
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 11
    if-eqz v0, :cond_17

    .line 13
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 15
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 18
    move-result p1

    .line 19
    if-gt p1, p2, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v2

    .line 23
    :goto_16
    return v1

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 29
    move-result p1

    .line 30
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->f()I

    .line 35
    move-result v0

    .line 36
    sub-int/2addr v0, p2

    .line 37
    if-lt p1, v0, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v1, v2

    .line 41
    :goto_28
    return v1
.end method

.method private canViewBeRecycledFromStart(Landroid/view/View;I)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1e

    .line 9
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->f()I

    .line 18
    move-result v0

    .line 19
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 21
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 24
    move-result p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-gt v0, p2, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v2

    .line 30
    :goto_1d
    return v1

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 36
    move-result p1

    .line 37
    if-gt p1, p2, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v1, v2

    .line 41
    :goto_28
    return v1
.end method

.method private clearFlexLines()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 8
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 17
    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 12
    move-result v0

    .line 13
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_3a

    .line 30
    if-eqz v2, :cond_3a

    .line 32
    if-nez v0, :cond_22

    .line 34
    goto :goto_3a

    .line 35
    :cond_22
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 43
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 46
    move-result v0

    .line 47
    sub-int/2addr p1, v0

    .line 48
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->l()I

    .line 53
    move-result v0

    .line 54
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_3a
    :goto_3a
    return v1
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_62

    .line 27
    if-eqz v2, :cond_62

    .line 29
    if-nez v0, :cond_1f

    .line 31
    goto :goto_62

    .line 32
    :cond_1f
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 39
    move-result v3

    .line 40
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 42
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 45
    move-result v0

    .line 46
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 48
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 51
    move-result v4

    .line 52
    sub-int/2addr v0, v4

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 56
    move-result v0

    .line 57
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 59
    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 61
    aget p1, v4, p1

    .line 63
    if-eqz p1, :cond_62

    .line 65
    const/4 v5, -0x1

    .line 66
    if-ne p1, v5, :cond_44

    .line 68
    goto :goto_62

    .line 69
    :cond_44
    aget v1, v4, v3

    .line 71
    sub-int/2addr v1, p1

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 74
    int-to-float v0, v0

    .line 75
    int-to-float v1, v1

    .line 76
    div-float/2addr v0, v1

    .line 77
    int-to-float p1, p1

    .line 78
    mul-float/2addr p1, v0

    .line 79
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 81
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 84
    move-result v0

    .line 85
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 87
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 90
    move-result v1

    .line 91
    sub-int/2addr v0, v1

    .line 92
    int-to-float v0, v0

    .line 93
    add-float/2addr p1, v0

    .line 94
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 97
    move-result p1

    .line 98
    return p1

    .line 99
    :cond_62
    :goto_62
    return v1
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_46

    .line 27
    if-eqz v2, :cond_46

    .line 29
    if-nez v0, :cond_1f

    .line 31
    goto :goto_46

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    .line 39
    move-result v3

    .line 40
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 42
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 45
    move-result v0

    .line 46
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 48
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 51
    move-result v2

    .line 52
    sub-int/2addr v0, v2

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 56
    move-result v0

    .line 57
    sub-int/2addr v3, v1

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 60
    int-to-float v0, v0

    .line 61
    int-to-float v1, v3

    .line 62
    div-float/2addr v0, v1

    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    mul-float/2addr v0, p1

    .line 69
    float-to-int p1, v0

    .line 70
    return p1

    .line 71
    :cond_46
    :goto_46
    return v1
.end method

.method private ensureLayoutState()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 13
    :cond_c
    return-void
.end method

.method private ensureOrientationHelper()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2d

    .line 12
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 14
    if-nez v0, :cond_1e

    .line 16
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 18
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 23
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 25
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 30
    goto :goto_4e

    .line 31
    :cond_1e
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 33
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 38
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 40
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 45
    goto :goto_4e

    .line 46
    :cond_2d
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 48
    if-nez v0, :cond_40

    .line 50
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 52
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 57
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 59
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 64
    goto :goto_4e

    .line 65
    :cond_40
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 67
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 72
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 74
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 79
    :goto_4e
    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 13

    .line 1
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 7
    if-eq v0, v1, :cond_1d

    .line 9
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_1a

    .line 15
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 18
    move-result v0

    .line 19
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v0, v2

    .line 24
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 27
    :cond_1a
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 30
    :cond_1d
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 33
    move-result v0

    .line 34
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 42
    move-result v4

    .line 43
    :goto_2a
    if-gtz v2, :cond_34

    .line 45
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 47
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_81

    .line 53
    :cond_34
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 55
    invoke-static {p3, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$y;Ljava/util/List;)Z

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_81

    .line 61
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 63
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 66
    move-result v6

    .line 67
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 73
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 75
    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 78
    invoke-direct {p0, v5, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->layoutFlexLine(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 81
    move-result v6

    .line 82
    add-int/2addr v3, v6

    .line 83
    if-nez v4, :cond_6a

    .line 85
    iget-boolean v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 87
    if-eqz v6, :cond_6a

    .line 89
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 92
    move-result v6

    .line 93
    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    .line 96
    move-result v7

    .line 97
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 100
    move-result v8

    .line 101
    mul-int/2addr v7, v8

    .line 102
    sub-int/2addr v6, v7

    .line 103
    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 106
    goto :goto_7b

    .line 107
    :cond_6a
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 110
    move-result v6

    .line 111
    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    .line 114
    move-result v7

    .line 115
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 118
    move-result v8

    .line 119
    mul-int/2addr v7, v8

    .line 120
    add-int/2addr v7, v6

    .line 121
    invoke-static {p3, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 124
    :goto_7b
    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    .line 127
    move-result v5

    .line 128
    sub-int/2addr v2, v5

    .line 129
    goto :goto_2a

    .line 130
    :cond_81
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 133
    move-result p2

    .line 134
    sub-int/2addr p2, v3

    .line 135
    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 138
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 141
    move-result p2

    .line 142
    if-eq p2, v1, :cond_ac

    .line 144
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 147
    move-result p2

    .line 148
    add-int/2addr p2, v3

    .line 149
    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 152
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 155
    move-result p2

    .line 156
    if-gez p2, :cond_a9

    .line 158
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 161
    move-result p2

    .line 162
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 165
    move-result v1

    .line 166
    add-int/2addr p2, v1

    .line 167
    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 170
    :cond_a9
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 173
    :cond_ac
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 176
    move-result p1

    .line 177
    sub-int/2addr v0, p1

    .line 178
    return v0
.end method

.method private findFirstReferenceChild(I)Landroid/view/View;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 20
    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 22
    aget v1, v2, v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v1, v2, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method private findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 7
    const/4 v1, 0x1

    .line 8
    :goto_7
    if-ge v1, p2, :cond_3f

    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_3c

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 19
    move-result v3

    .line 20
    const/16 v4, 0x8

    .line 22
    if-ne v3, v4, :cond_18

    .line 24
    goto :goto_3c

    .line 25
    :cond_18
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 27
    if-eqz v3, :cond_2d

    .line 29
    if-nez v0, :cond_2d

    .line 31
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 33
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 36
    move-result v3

    .line 37
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 39
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_3c

    .line 45
    goto :goto_3b

    .line 46
    :cond_2d
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 48
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 51
    move-result v3

    .line 52
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 54
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 57
    move-result v4

    .line 58
    if-le v3, v4, :cond_3c

    .line 60
    :goto_3b
    move-object p1, v2

    .line 61
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_7

    .line 64
    :cond_3f
    return-object p1
.end method

.method private findLastReferenceChild(I)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_f

    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_f
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 22
    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 24
    aget v0, v1, v0

    .line 26
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x2

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 14
    move-result v2

    .line 15
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 17
    sub-int/2addr v2, p2

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 20
    :goto_13
    if-le v1, v2, :cond_4b

    .line 22
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_48

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 31
    move-result v3

    .line 32
    const/16 v4, 0x8

    .line 34
    if-ne v3, v4, :cond_24

    .line 36
    goto :goto_48

    .line 37
    :cond_24
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 39
    if-eqz v3, :cond_39

    .line 41
    if-nez v0, :cond_39

    .line 43
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 45
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 51
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 54
    move-result v4

    .line 55
    if-le v3, v4, :cond_48

    .line 57
    goto :goto_47

    .line 58
    :cond_39
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 60
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 66
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 69
    move-result v4

    .line 70
    if-ge v3, v4, :cond_48

    .line 72
    :goto_47
    move-object p1, p2

    .line 73
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, -0x1

    .line 75
    goto :goto_13

    .line 76
    :cond_4b
    return-object p1
.end method

.method private findOneVisibleChild(IIZ)Landroid/view/View;
    .registers 7

    .line 1
    if-le p2, p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, -0x1

    .line 6
    :goto_5
    if-eq p1, p2, :cond_14

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0, v1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isViewVisible(Landroid/view/View;Z)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_12

    .line 18
    return-object v1

    .line 19
    :cond_12
    add-int/2addr p1, v0

    .line 20
    goto :goto_5

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method private findReferenceChild(III)Landroid/view/View;
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 7
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    .line 18
    move-result v1

    .line 19
    if-le p2, p1, :cond_16

    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v2, -0x1

    .line 24
    :goto_17
    const/4 v3, 0x0

    .line 25
    move-object v4, v3

    .line 26
    :goto_19
    if-eq p1, p2, :cond_4e

    .line 28
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 35
    move-result v6

    .line 36
    if-ltz v6, :cond_4c

    .line 38
    if-ge v6, p3, :cond_4c

    .line 40
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 46
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_37

    .line 52
    if-nez v4, :cond_4c

    .line 54
    move-object v4, v5

    .line 55
    goto :goto_4c

    .line 56
    :cond_37
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 58
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 61
    move-result v6

    .line 62
    if-lt v6, v0, :cond_49

    .line 64
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 66
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 69
    move-result v6

    .line 70
    if-le v6, v1, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    return-object v5

    .line 74
    :cond_49
    :goto_49
    if-nez v3, :cond_4c

    .line 76
    move-object v3, v5

    .line 77
    :cond_4c
    :goto_4c
    add-int/2addr p1, v2

    .line 78
    goto :goto_19

    .line 79
    :cond_4e
    if-eqz v3, :cond_51

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move-object v3, v4

    .line 83
    :goto_52
    return-object v3
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_d

    .line 8
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 10
    if-eqz v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v0, v1

    .line 15
    :goto_e
    if-eqz v0, :cond_20

    .line 17
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 22
    move-result v0

    .line 23
    sub-int v0, p1, v0

    .line 25
    if-lez v0, :cond_1f

    .line 27
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 30
    move-result p2

    .line 31
    goto :goto_2f

    .line 32
    :cond_1f
    return v1

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 38
    move-result v0

    .line 39
    sub-int/2addr v0, p1

    .line 40
    if-lez v0, :cond_43

    .line 42
    neg-int v0, v0

    .line 43
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 46
    move-result p2

    .line 47
    neg-int p2, p2

    .line 48
    :goto_2f
    add-int/2addr p1, p2

    .line 49
    if-eqz p4, :cond_42

    .line 51
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 53
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->g()I

    .line 56
    move-result p3

    .line 57
    sub-int/2addr p3, p1

    .line 58
    if-lez p3, :cond_42

    .line 60
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 62
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 65
    add-int/2addr p3, p2

    .line 66
    return p3

    .line 67
    :cond_42
    return p2

    .line 68
    :cond_43
    return v1
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1b

    .line 8
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 10
    if-eqz v0, :cond_1b

    .line 12
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 17
    move-result v0

    .line 18
    sub-int/2addr v0, p1

    .line 19
    if-lez v0, :cond_1a

    .line 21
    neg-int v0, v0

    .line 22
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 25
    move-result p2

    .line 26
    goto :goto_2a

    .line 27
    :cond_1a
    return v1

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 33
    move-result v0

    .line 34
    sub-int v0, p1, v0

    .line 36
    if-lez v0, :cond_3e

    .line 38
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 41
    move-result p2

    .line 42
    neg-int p2, p2

    .line 43
    :goto_2a
    add-int/2addr p1, p2

    .line 44
    if-eqz p4, :cond_3d

    .line 46
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 48
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->k()I

    .line 51
    move-result p3

    .line 52
    sub-int/2addr p1, p3

    .line 53
    if-lez p1, :cond_3d

    .line 55
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 57
    neg-int p4, p1

    .line 58
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 61
    sub-int/2addr p2, p1

    .line 62
    :cond_3d
    return p2

    .line 63
    :cond_3e
    return v1
.end method

.method private getChildBottom(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 13
    add-int/2addr p1, v0

    .line 14
    return p1
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method private getChildLeft(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method private getChildRight(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 13
    add-int/2addr p1, v0

    .line 14
    return p1
.end method

.method private getChildTop(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method private handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_58

    .line 8
    if-nez p1, :cond_a

    .line 10
    goto :goto_58

    .line 11
    :cond_a
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 14
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 20
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1f

    .line 26
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 28
    if-eqz v0, :cond_1f

    .line 30
    move v0, v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v0, v1

    .line 33
    :goto_20
    const/4 v3, -0x1

    .line 34
    if-eqz v0, :cond_28

    .line 36
    if-gez p1, :cond_26

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    move v2, v3

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    if-lez p1, :cond_26

    .line 43
    :goto_2a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    move-result v3

    .line 47
    invoke-direct {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutState(II)V

    .line 50
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 52
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 55
    move-result v4

    .line 56
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 58
    invoke-direct {p0, p2, p3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 61
    move-result p2

    .line 62
    add-int/2addr v4, p2

    .line 63
    if-gez v4, :cond_41

    .line 65
    return v1

    .line 66
    :cond_41
    if-eqz v0, :cond_48

    .line 68
    if-le v3, v4, :cond_4c

    .line 70
    neg-int p1, v2

    .line 71
    mul-int/2addr p1, v4

    .line 72
    goto :goto_4c

    .line 73
    :cond_48
    if-le v3, v4, :cond_4c

    .line 75
    mul-int p1, v2, v4

    .line 77
    :cond_4c
    :goto_4c
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 79
    neg-int p3, p1

    .line 80
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 83
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 85
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2702(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 88
    return p1

    .line 89
    :cond_58
    :goto_58
    return v1
.end method

.method private handleScrollingSubOrientation(I)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_79

    .line 8
    if-nez p1, :cond_b

    .line 10
    goto/16 :goto_79

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v2

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v2

    .line 32
    :goto_1f
    if-eqz v0, :cond_26

    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 37
    move-result v0

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 42
    move-result v0

    .line 43
    :goto_2a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-ne v3, v4, :cond_32

    .line 50
    move v1, v4

    .line 51
    :cond_32
    if-eqz v1, :cond_58

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 56
    move-result v1

    .line 57
    if-gez p1, :cond_47

    .line 59
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 61
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 64
    move-result p1

    .line 65
    add-int/2addr v0, p1

    .line 66
    sub-int/2addr v0, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result p1

    .line 71
    goto :goto_56

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 74
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 77
    move-result v0

    .line 78
    add-int/2addr v0, p1

    .line 79
    if-lez v0, :cond_78

    .line 81
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 83
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 86
    move-result p1

    .line 87
    :goto_56
    neg-int p1, p1

    .line 88
    goto :goto_78

    .line 89
    :cond_58
    if-lez p1, :cond_67

    .line 91
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 93
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 96
    move-result v1

    .line 97
    sub-int/2addr v0, v1

    .line 98
    sub-int/2addr v0, v2

    .line 99
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result p1

    .line 103
    goto :goto_78

    .line 104
    :cond_67
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 106
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 109
    move-result v0

    .line 110
    add-int/2addr v0, p1

    .line 111
    if-ltz v0, :cond_71

    .line 113
    goto :goto_78

    .line 114
    :cond_71
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 116
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 119
    move-result p1

    .line 120
    goto :goto_56

    .line 121
    :cond_78
    :goto_78
    return p1

    .line 122
    :cond_79
    :goto_79
    return v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez p2, :cond_e

    .line 12
    if-eq p0, p2, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    const/high16 p2, -0x80000000

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, p2, :cond_1f

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    const/high16 p2, 0x40000000  # 2.0f

    .line 24
    if-eq v0, p2, :cond_1a

    .line 26
    return v1

    .line 27
    :cond_1a
    if-ne p1, p0, :cond_1d

    .line 29
    move v1, v2

    .line 30
    :cond_1d
    return v1

    .line 31
    :cond_1e
    return v2

    .line 32
    :cond_1f
    if-lt p1, p0, :cond_22

    .line 34
    move v1, v2

    .line 35
    :cond_22
    return v1
.end method

.method private isViewVisible(Landroid/view/View;Z)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 25
    move-result v4

    .line 26
    sub-int/2addr v3, v4

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildLeft(Landroid/view/View;)I

    .line 30
    move-result v4

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildTop(Landroid/view/View;)I

    .line 34
    move-result v5

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildRight(Landroid/view/View;)I

    .line 38
    move-result v6

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildBottom(Landroid/view/View;)I

    .line 42
    move-result p1

    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x0

    .line 45
    if-gt v0, v4, :cond_32

    .line 47
    if-lt v2, v6, :cond_32

    .line 49
    move v9, v7

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v9, v8

    .line 52
    :goto_33
    if-ge v4, v2, :cond_3a

    .line 54
    if-lt v6, v0, :cond_38

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    move v0, v8

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    :goto_3a
    move v0, v7

    .line 60
    :goto_3b
    if-gt v1, v5, :cond_41

    .line 62
    if-lt v3, p1, :cond_41

    .line 64
    move v2, v7

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v2, v8

    .line 67
    :goto_42
    if-ge v5, v3, :cond_49

    .line 69
    if-lt p1, v1, :cond_47

    .line 71
    goto :goto_49

    .line 72
    :cond_47
    move p1, v8

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    :goto_49
    move p1, v7

    .line 75
    :goto_4a
    if-eqz p2, :cond_53

    .line 77
    if-eqz v9, :cond_51

    .line 79
    if-eqz v2, :cond_51

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v7, v8

    .line 83
    :goto_52
    return v7

    .line 84
    :cond_53
    if-eqz v0, :cond_58

    .line 86
    if-eqz p1, :cond_58

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move v7, v8

    .line 90
    :goto_59
    return v7
.end method

.method private layoutFlexLine(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->layoutFlexLineMainAxisHorizontal(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->layoutFlexLineMainAxisVertical(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private layoutFlexLineMainAxisHorizontal(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 16
    move-result v3

    .line 17
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 20
    move-result v4

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 24
    move-result v5

    .line 25
    const/4 v6, -0x1

    .line 26
    if-ne v5, v6, :cond_1e

    .line 28
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 30
    sub-int/2addr v4, v5

    .line 31
    :cond_1e
    move v9, v4

    .line 32
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 35
    move-result v10

    .line 36
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v4, :cond_ab

    .line 42
    if-eq v4, v6, :cond_9d

    .line 44
    const/4 v7, 0x2

    .line 45
    const/high16 v11, 0x40000000  # 2.0f

    .line 47
    if-eq v4, v7, :cond_8b

    .line 49
    const/4 v7, 0x3

    .line 50
    if-eq v4, v7, :cond_78

    .line 52
    const/4 v7, 0x4

    .line 53
    if-eq v4, v7, :cond_63

    .line 55
    const/4 v7, 0x5

    .line 56
    if-ne v4, v7, :cond_4e

    .line 58
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 60
    if-eqz v4, :cond_46

    .line 62
    iget v7, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 64
    sub-int v7, v3, v7

    .line 66
    int-to-float v7, v7

    .line 67
    add-int/2addr v4, v6

    .line 68
    int-to-float v4, v4

    .line 69
    div-float/2addr v7, v4

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v7, v5

    .line 72
    :goto_47
    int-to-float v1, v1

    .line 73
    add-float/2addr v1, v7

    .line 74
    sub-int/2addr v3, v2

    .line 75
    int-to-float v2, v3

    .line 76
    sub-float/2addr v2, v7

    .line 77
    goto/16 :goto_af

    .line 79
    :cond_4e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 81
    const-string v2, "Invalid justifyContent is set: "

    .line 83
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object v2

    .line 87
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v1

    .line 100
    :cond_63
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 102
    if-eqz v4, :cond_6f

    .line 104
    iget v7, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 106
    sub-int v7, v3, v7

    .line 108
    int-to-float v7, v7

    .line 109
    int-to-float v4, v4

    .line 110
    div-float/2addr v7, v4

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move v7, v5

    .line 113
    :goto_70
    int-to-float v1, v1

    .line 114
    div-float v4, v7, v11

    .line 116
    add-float/2addr v1, v4

    .line 117
    sub-int/2addr v3, v2

    .line 118
    int-to-float v2, v3

    .line 119
    sub-float/2addr v2, v4

    .line 120
    goto :goto_af

    .line 121
    :cond_78
    int-to-float v1, v1

    .line 122
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 124
    if-eq v4, v6, :cond_80

    .line 126
    sub-int/2addr v4, v6

    .line 127
    int-to-float v4, v4

    .line 128
    goto :goto_82

    .line 129
    :cond_80
    const/high16 v4, 0x3f800000  # 1.0f

    .line 131
    :goto_82
    iget v7, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 133
    sub-int v7, v3, v7

    .line 135
    int-to-float v7, v7

    .line 136
    div-float/2addr v7, v4

    .line 137
    sub-int/2addr v3, v2

    .line 138
    int-to-float v2, v3

    .line 139
    goto :goto_af

    .line 140
    :cond_8b
    int-to-float v1, v1

    .line 141
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 143
    sub-int v7, v3, v4

    .line 145
    int-to-float v7, v7

    .line 146
    div-float/2addr v7, v11

    .line 147
    add-float/2addr v7, v1

    .line 148
    sub-int v1, v3, v2

    .line 150
    int-to-float v1, v1

    .line 151
    sub-int/2addr v3, v4

    .line 152
    int-to-float v2, v3

    .line 153
    div-float/2addr v2, v11

    .line 154
    sub-float/2addr v1, v2

    .line 155
    move v2, v1

    .line 156
    move v1, v7

    .line 157
    goto :goto_ae

    .line 158
    :cond_9d
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 160
    sub-int/2addr v3, v4

    .line 161
    add-int/2addr v3, v2

    .line 162
    int-to-float v2, v3

    .line 163
    sub-int/2addr v4, v1

    .line 164
    int-to-float v1, v4

    .line 165
    move v7, v5

    .line 166
    move/from16 v19, v2

    .line 168
    move v2, v1

    .line 169
    move/from16 v1, v19

    .line 171
    goto :goto_af

    .line 172
    :cond_ab
    int-to-float v1, v1

    .line 173
    sub-int/2addr v3, v2

    .line 174
    int-to-float v2, v3

    .line 175
    :goto_ae
    move v7, v5

    .line 176
    :goto_af
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 178
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 181
    move-result v3

    .line 182
    int-to-float v3, v3

    .line 183
    sub-float/2addr v1, v3

    .line 184
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 186
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 189
    move-result v3

    .line 190
    int-to-float v3, v3

    .line 191
    sub-float/2addr v2, v3

    .line 192
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 195
    move-result v11

    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    .line 200
    move-result v12

    .line 201
    move v13, v10

    .line 202
    :goto_c9
    add-int v4, v10, v12

    .line 204
    if-ge v13, v4, :cond_194

    .line 206
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 209
    move-result-object v14

    .line 210
    if-nez v14, :cond_d5

    .line 212
    goto/16 :goto_18d

    .line 214
    :cond_d5
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 217
    move-result v4

    .line 218
    if-ne v4, v6, :cond_e4

    .line 220
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {v0, v14, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 225
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 228
    goto :goto_ee

    .line 229
    :cond_e4
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 231
    invoke-virtual {v0, v14, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {v0, v14, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 239
    :goto_ee
    move v15, v3

    .line 240
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 242
    iget-object v4, v3, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 244
    aget-wide v5, v4, v13

    .line 246
    invoke-virtual {v3, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 249
    move-result v3

    .line 250
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 252
    invoke-virtual {v4, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 255
    move-result v4

    .line 256
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 259
    move-result-object v5

    .line 260
    move-object v7, v5

    .line 261
    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 263
    invoke-direct {v0, v14, v3, v4, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_10f

    .line 269
    invoke-virtual {v14, v3, v4}, Landroid/view/View;->measure(II)V

    .line 272
    :cond_10f
    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 274
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 277
    move-result v4

    .line 278
    add-int/2addr v4, v3

    .line 279
    int-to-float v3, v4

    .line 280
    add-float v16, v1, v3

    .line 282
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 284
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 287
    move-result v3

    .line 288
    add-int/2addr v3, v1

    .line 289
    int-to-float v1, v3

    .line 290
    sub-float v17, v2, v1

    .line 292
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 295
    move-result v1

    .line 296
    add-int v5, v1, v9

    .line 298
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 300
    if-eqz v1, :cond_14d

    .line 302
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 304
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 307
    move-result v2

    .line 308
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 311
    move-result v3

    .line 312
    sub-int v4, v2, v3

    .line 314
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 317
    move-result v6

    .line 318
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 321
    move-result v2

    .line 322
    add-int v18, v2, v5

    .line 324
    move-object v2, v14

    .line 325
    move-object/from16 v3, p1

    .line 327
    move-object v8, v7

    .line 328
    move/from16 v7, v18

    .line 330
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 333
    goto :goto_16a

    .line 334
    :cond_14d
    move-object v8, v7

    .line 335
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 337
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 340
    move-result v4

    .line 341
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 344
    move-result v2

    .line 345
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 348
    move-result v3

    .line 349
    add-int v6, v3, v2

    .line 351
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 354
    move-result v2

    .line 355
    add-int v7, v2, v5

    .line 357
    move-object v2, v14

    .line 358
    move-object/from16 v3, p1

    .line 360
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 363
    :goto_16a
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 366
    move-result v1

    .line 367
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 369
    add-int/2addr v1, v2

    .line 370
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 373
    move-result v2

    .line 374
    add-int/2addr v2, v1

    .line 375
    int-to-float v1, v2

    .line 376
    add-float/2addr v1, v11

    .line 377
    add-float v1, v1, v16

    .line 379
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 382
    move-result v2

    .line 383
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 385
    add-int/2addr v2, v3

    .line 386
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 389
    move-result v3

    .line 390
    add-int/2addr v3, v2

    .line 391
    int-to-float v2, v3

    .line 392
    add-float/2addr v2, v11

    .line 393
    sub-float v17, v17, v2

    .line 395
    move v3, v15

    .line 396
    move/from16 v2, v17

    .line 398
    :goto_18d
    add-int/lit8 v13, v13, 0x1

    .line 400
    const/4 v6, 0x1

    .line 401
    move-object/from16 v8, p1

    .line 403
    goto/16 :goto_c9

    .line 405
    :cond_194
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 408
    move-result v1

    .line 409
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 411
    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 414
    move-result v2

    .line 415
    add-int/2addr v1, v2

    .line 416
    move-object/from16 v2, p2

    .line 418
    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    .line 424
    move-result v1

    .line 425
    return v1
.end method

.method private layoutFlexLineMainAxisVertical(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 16
    move-result v3

    .line 17
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 20
    move-result v4

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 24
    move-result v5

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 28
    move-result v6

    .line 29
    const/4 v7, -0x1

    .line 30
    if-ne v6, v7, :cond_23

    .line 32
    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 34
    sub-int/2addr v4, v6

    .line 35
    add-int/2addr v5, v6

    .line 36
    :cond_23
    move v10, v4

    .line 37
    move v11, v5

    .line 38
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 41
    move-result v12

    .line 42
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v4, :cond_b3

    .line 48
    if-eq v4, v6, :cond_a5

    .line 50
    const/4 v7, 0x2

    .line 51
    const/high16 v8, 0x40000000  # 2.0f

    .line 53
    if-eq v4, v7, :cond_93

    .line 55
    const/4 v7, 0x3

    .line 56
    if-eq v4, v7, :cond_7f

    .line 58
    const/4 v7, 0x4

    .line 59
    if-eq v4, v7, :cond_69

    .line 61
    const/4 v7, 0x5

    .line 62
    if-ne v4, v7, :cond_54

    .line 64
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 66
    if-eqz v4, :cond_4c

    .line 68
    iget v7, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 70
    sub-int v7, v3, v7

    .line 72
    int-to-float v7, v7

    .line 73
    add-int/2addr v4, v6

    .line 74
    int-to-float v4, v4

    .line 75
    div-float/2addr v7, v4

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v7, v5

    .line 78
    :goto_4d
    int-to-float v1, v1

    .line 79
    add-float/2addr v1, v7

    .line 80
    sub-int/2addr v3, v2

    .line 81
    int-to-float v2, v3

    .line 82
    sub-float/2addr v2, v7

    .line 83
    goto/16 :goto_b7

    .line 85
    :cond_54
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 87
    const-string v2, "Invalid justifyContent is set: "

    .line 89
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v2

    .line 93
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v1

    .line 106
    :cond_69
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 108
    if-eqz v4, :cond_76

    .line 110
    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 112
    sub-int v6, v3, v6

    .line 114
    int-to-float v6, v6

    .line 115
    int-to-float v4, v4

    .line 116
    div-float/2addr v6, v4

    .line 117
    move v7, v6

    .line 118
    goto :goto_77

    .line 119
    :cond_76
    move v7, v5

    .line 120
    :goto_77
    int-to-float v1, v1

    .line 121
    div-float v4, v7, v8

    .line 123
    add-float/2addr v1, v4

    .line 124
    sub-int/2addr v3, v2

    .line 125
    int-to-float v2, v3

    .line 126
    sub-float/2addr v2, v4

    .line 127
    goto :goto_b7

    .line 128
    :cond_7f
    int-to-float v1, v1

    .line 129
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 131
    if-eq v4, v6, :cond_87

    .line 133
    sub-int/2addr v4, v6

    .line 134
    int-to-float v4, v4

    .line 135
    goto :goto_89

    .line 136
    :cond_87
    const/high16 v4, 0x3f800000  # 1.0f

    .line 138
    :goto_89
    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 140
    sub-int v6, v3, v6

    .line 142
    int-to-float v6, v6

    .line 143
    div-float v7, v6, v4

    .line 145
    sub-int/2addr v3, v2

    .line 146
    int-to-float v2, v3

    .line 147
    goto :goto_b7

    .line 148
    :cond_93
    int-to-float v1, v1

    .line 149
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 151
    sub-int v6, v3, v4

    .line 153
    int-to-float v6, v6

    .line 154
    div-float/2addr v6, v8

    .line 155
    add-float/2addr v6, v1

    .line 156
    sub-int v1, v3, v2

    .line 158
    int-to-float v1, v1

    .line 159
    sub-int/2addr v3, v4

    .line 160
    int-to-float v2, v3

    .line 161
    div-float/2addr v2, v8

    .line 162
    sub-float/2addr v1, v2

    .line 163
    move v2, v1

    .line 164
    move v1, v6

    .line 165
    goto :goto_b6

    .line 166
    :cond_a5
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 168
    sub-int/2addr v3, v4

    .line 169
    add-int/2addr v3, v2

    .line 170
    int-to-float v2, v3

    .line 171
    sub-int/2addr v4, v1

    .line 172
    int-to-float v1, v4

    .line 173
    move v7, v5

    .line 174
    move/from16 v22, v2

    .line 176
    move v2, v1

    .line 177
    move/from16 v1, v22

    .line 179
    goto :goto_b7

    .line 180
    :cond_b3
    int-to-float v1, v1

    .line 181
    sub-int/2addr v3, v2

    .line 182
    int-to-float v2, v3

    .line 183
    :goto_b6
    move v7, v5

    .line 184
    :goto_b7
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 186
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 189
    move-result v3

    .line 190
    int-to-float v3, v3

    .line 191
    sub-float/2addr v1, v3

    .line 192
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 194
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 197
    move-result v3

    .line 198
    int-to-float v3, v3

    .line 199
    sub-float/2addr v2, v3

    .line 200
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 203
    move-result v13

    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    .line 208
    move-result v14

    .line 209
    move v15, v12

    .line 210
    :goto_d1
    add-int v4, v12, v14

    .line 212
    if-ge v15, v4, :cond_1f6

    .line 214
    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 217
    move-result-object v8

    .line 218
    if-nez v8, :cond_dd

    .line 220
    goto/16 :goto_1f0

    .line 222
    :cond_dd
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 224
    iget-object v5, v4, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 226
    aget-wide v6, v5, v15

    .line 228
    invoke-virtual {v4, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 231
    move-result v4

    .line 232
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 234
    invoke-virtual {v5, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 237
    move-result v5

    .line 238
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 241
    move-result-object v6

    .line 242
    move-object v7, v6

    .line 243
    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 245
    invoke-direct {v0, v8, v4, v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_fd

    .line 251
    invoke-virtual {v8, v4, v5}, Landroid/view/View;->measure(II)V

    .line 254
    :cond_fd
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 256
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 259
    move-result v5

    .line 260
    add-int/2addr v5, v4

    .line 261
    int-to-float v4, v5

    .line 262
    add-float v16, v1, v4

    .line 264
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 266
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 269
    move-result v4

    .line 270
    add-int/2addr v4, v1

    .line 271
    int-to-float v1, v4

    .line 272
    sub-float v17, v2, v1

    .line 274
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 277
    move-result v1

    .line 278
    const/4 v2, 0x1

    .line 279
    if-ne v1, v2, :cond_121

    .line 281
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 283
    invoke-virtual {v0, v8, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 289
    goto :goto_12b

    .line 290
    :cond_121
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 292
    invoke-virtual {v0, v8, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {v0, v8, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    .line 300
    :goto_12b
    move/from16 v18, v3

    .line 302
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 305
    move-result v1

    .line 306
    add-int v5, v1, v10

    .line 308
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 311
    move-result v1

    .line 312
    sub-int v19, v11, v1

    .line 314
    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 316
    if-eqz v4, :cond_188

    .line 318
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 320
    if-eqz v1, :cond_165

    .line 322
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 324
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 327
    move-result v2

    .line 328
    sub-int v5, v19, v2

    .line 330
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 333
    move-result v2

    .line 334
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 337
    move-result v3

    .line 338
    sub-int v6, v2, v3

    .line 340
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 343
    move-result v20

    .line 344
    move-object v2, v8

    .line 345
    move-object/from16 v3, p1

    .line 347
    move-object v9, v7

    .line 348
    move/from16 v7, v19

    .line 350
    move-object/from16 v21, v8

    .line 352
    move/from16 v8, v20

    .line 354
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 357
    goto :goto_1ca

    .line 358
    :cond_165
    move-object v9, v7

    .line 359
    move-object/from16 v21, v8

    .line 361
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 363
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    .line 366
    move-result v2

    .line 367
    sub-int v5, v19, v2

    .line 369
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 372
    move-result v6

    .line 373
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 376
    move-result v2

    .line 377
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    .line 380
    move-result v3

    .line 381
    add-int v8, v3, v2

    .line 383
    move-object/from16 v2, v21

    .line 385
    move-object/from16 v3, p1

    .line 387
    move/from16 v7, v19

    .line 389
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 392
    goto :goto_1ca

    .line 393
    :cond_188
    move-object v9, v7

    .line 394
    move-object/from16 v21, v8

    .line 396
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 398
    if-eqz v1, :cond_1ad

    .line 400
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 402
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 405
    move-result v2

    .line 406
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    .line 409
    move-result v3

    .line 410
    sub-int v6, v2, v3

    .line 412
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    .line 415
    move-result v2

    .line 416
    add-int v7, v2, v5

    .line 418
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 421
    move-result v8

    .line 422
    move-object/from16 v2, v21

    .line 424
    move-object/from16 v3, p1

    .line 426
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 429
    goto :goto_1ca

    .line 430
    :cond_1ad
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 432
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 435
    move-result v6

    .line 436
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    .line 439
    move-result v2

    .line 440
    add-int v7, v2, v5

    .line 442
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 445
    move-result v2

    .line 446
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    .line 449
    move-result v3

    .line 450
    add-int v8, v3, v2

    .line 452
    move-object/from16 v2, v21

    .line 454
    move-object/from16 v3, p1

    .line 456
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 459
    :goto_1ca
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    .line 462
    move-result v1

    .line 463
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 465
    add-int/2addr v1, v2

    .line 466
    move-object/from16 v2, v21

    .line 468
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 471
    move-result v3

    .line 472
    add-int/2addr v3, v1

    .line 473
    int-to-float v1, v3

    .line 474
    add-float/2addr v1, v13

    .line 475
    add-float v1, v1, v16

    .line 477
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 480
    move-result v3

    .line 481
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 483
    add-int/2addr v3, v4

    .line 484
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 487
    move-result v2

    .line 488
    add-int/2addr v2, v3

    .line 489
    int-to-float v2, v2

    .line 490
    add-float/2addr v2, v13

    .line 491
    sub-float v17, v17, v2

    .line 493
    move/from16 v2, v17

    .line 495
    move/from16 v3, v18

    .line 497
    :goto_1f0
    add-int/lit8 v15, v15, 0x1

    .line 499
    move-object/from16 v9, p1

    .line 501
    goto/16 :goto_d1

    .line 503
    :cond_1f6
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 506
    move-result v1

    .line 507
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 509
    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 512
    move-result v2

    .line 513
    add-int/2addr v1, v2

    .line 514
    move-object/from16 v2, p2

    .line 516
    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    .line 522
    move-result v1

    .line 523
    return v1
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .registers 5

    .line 1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_12

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleFlexLinesFromEnd(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleFlexLinesFromStart(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 22
    :goto_15
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .registers 4

    .line 1
    :goto_0
    if-lt p3, p2, :cond_8

    .line 3
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 6
    add-int/lit8 p3, p3, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_8
    return-void
.end method

.method private recycleFlexLinesFromEnd(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .registers 10

    .line 1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->f()I

    .line 13
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    add-int/lit8 v1, v0, -0x1

    .line 25
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 31
    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 33
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 36
    move-result v2

    .line 37
    aget v2, v3, v2

    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v2, v3, :cond_2a

    .line 42
    return-void

    .line 43
    :cond_2a
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 45
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 51
    move v4, v1

    .line 52
    :goto_33
    if-ltz v4, :cond_61

    .line 54
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v5

    .line 58
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 61
    move-result v6

    .line 62
    invoke-direct {p0, v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canViewBeRecycledFromEnd(Landroid/view/View;I)Z

    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_61

    .line 68
    iget v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 70
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 73
    move-result v5

    .line 74
    if-ne v6, v5, :cond_5e

    .line 76
    if-gtz v2, :cond_4f

    .line 78
    move v0, v4

    .line 79
    goto :goto_61

    .line 80
    :cond_4f
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 83
    move-result v0

    .line 84
    add-int/2addr v2, v0

    .line 85
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 93
    move-object v3, v0

    .line 94
    move v0, v4

    .line 95
    :cond_5e
    add-int/lit8 v4, v4, -0x1

    .line 97
    goto :goto_33

    .line 98
    :cond_61
    :goto_61
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 101
    return-void
.end method

.method private recycleFlexLinesFromStart(Landroidx/recyclerview/widget/RecyclerView$u;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .registers 11

    .line 1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 22
    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 24
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    move-result v2

    .line 28
    aget v2, v3, v2

    .line 30
    const/4 v3, -0x1

    .line 31
    if-ne v2, v3, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 36
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 42
    move v5, v1

    .line 43
    :goto_2a
    if-ge v5, v0, :cond_60

    .line 45
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v6

    .line 49
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 52
    move-result v7

    .line 53
    invoke-direct {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canViewBeRecycledFromStart(Landroid/view/View;I)Z

    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_60

    .line 59
    iget v7, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 61
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 64
    move-result v6

    .line 65
    if-ne v7, v6, :cond_5d

    .line 67
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 72
    move-result v3

    .line 73
    add-int/lit8 v3, v3, -0x1

    .line 75
    if-lt v2, v3, :cond_4e

    .line 77
    move v3, v5

    .line 78
    goto :goto_60

    .line 79
    :cond_4e
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 82
    move-result v3

    .line 83
    add-int/2addr v2, v3

    .line 84
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 86
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 92
    move-object v4, v3

    .line 93
    move v3, v5

    .line 94
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    .line 96
    goto :goto_2a

    .line 97
    :cond_60
    :goto_60
    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 100
    return-void
.end method

.method private resolveInfiniteAmount()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 10
    move-result v0

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 15
    move-result v0

    .line 16
    :goto_f
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    const/high16 v2, -0x80000000

    .line 22
    if-ne v0, v2, :cond_18

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 28
    :goto_1b
    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 31
    return-void
.end method

.method private resolveLayoutDirection()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_47

    .line 12
    if-eq v1, v4, :cond_38

    .line 14
    if-eq v1, v2, :cond_27

    .line 16
    const/4 v5, 0x3

    .line 17
    if-eq v1, v5, :cond_17

    .line 19
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 21
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 23
    goto :goto_55

    .line 24
    :cond_17
    if-ne v0, v4, :cond_1a

    .line 26
    move v3, v4

    .line 27
    :cond_1a
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 29
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 31
    if-ne v0, v2, :cond_24

    .line 33
    xor-int/lit8 v0, v3, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 37
    :cond_24
    iput-boolean v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 39
    goto :goto_55

    .line 40
    :cond_27
    if-ne v0, v4, :cond_2b

    .line 42
    move v0, v4

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v0, v3

    .line 45
    :goto_2c
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 47
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 49
    if-ne v1, v2, :cond_35

    .line 51
    xor-int/2addr v0, v4

    .line 52
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 54
    :cond_35
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 56
    goto :goto_55

    .line 57
    :cond_38
    if-eq v0, v4, :cond_3c

    .line 59
    move v0, v4

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v0, v3

    .line 62
    :goto_3d
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 64
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 66
    if-ne v0, v2, :cond_44

    .line 68
    move v3, v4

    .line 69
    :cond_44
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 71
    goto :goto_55

    .line 72
    :cond_47
    if-ne v0, v4, :cond_4b

    .line 74
    move v0, v4

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v0, v3

    .line 77
    :goto_4c
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 79
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 81
    if-ne v0, v2, :cond_53

    .line 83
    move v3, v4

    .line 84
    :cond_53
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 86
    :goto_55
    return-void
.end method

.method private shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_27

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementCacheEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_27

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v0

    .line 17
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 19
    invoke-static {v0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_27

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 28
    move-result p1

    .line 29
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 31
    invoke-static {p1, p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_17

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 18
    move-result v0

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 27
    move-result v0

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    if-eqz v0, :cond_65

    .line 34
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Landroid/view/View;)V

    .line 37
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez p1, :cond_64

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_64

    .line 48
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 53
    move-result p1

    .line 54
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 56
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->g()I

    .line 59
    move-result v3

    .line 60
    if-ge p1, v3, :cond_4b

    .line 62
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 64
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 67
    move-result p1

    .line 68
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 70
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 73
    move-result v0

    .line 74
    if-ge p1, v0, :cond_4c

    .line 76
    :cond_4b
    move v1, v2

    .line 77
    :cond_4c
    if-eqz v1, :cond_64

    .line 79
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5b

    .line 85
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 90
    move-result p1

    .line 91
    goto :goto_61

    .line 92
    :cond_5b
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 97
    move-result p1

    .line 98
    :goto_61
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 101
    :cond_64
    return v2

    .line 102
    :cond_65
    return v1
.end method

.method private updateAnchorFromPendingState(Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z
    .registers 9

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_104

    .line 6
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v0, v2, :cond_c

    .line 11
    goto/16 :goto_104

    .line 13
    :cond_c
    const/high16 v3, -0x80000000

    .line 15
    if-ltz v0, :cond_100

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 20
    move-result v4

    .line 21
    if-lt v0, v4, :cond_18

    .line 23
    goto/16 :goto_100

    .line 25
    :cond_18
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 27
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1302(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 30
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 32
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 34
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 37
    move-result v4

    .line 38
    aget v0, v0, v4

    .line 40
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 43
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eqz v0, :cond_4e

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 51
    move-result p1

    .line 52
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$600(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4e

    .line 58
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 63
    move-result p1

    .line 64
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$300(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    .line 67
    move-result p3

    .line 68
    add-int/2addr p1, p3

    .line 69
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 72
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1802(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 75
    invoke-static {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 78
    return v4

    .line 79
    :cond_4e
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 81
    if-ne p1, v3, :cond_dc

    .line 83
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 85
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_c2

    .line 91
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 93
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 96
    move-result p3

    .line 97
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 99
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->l()I

    .line 102
    move-result v0

    .line 103
    if-le p3, v0, :cond_6c

    .line 105
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 108
    return v4

    .line 109
    :cond_6c
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 111
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 114
    move-result p3

    .line 115
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 120
    move-result v0

    .line 121
    sub-int/2addr p3, v0

    .line 122
    if-gez p3, :cond_88

    .line 124
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 126
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 129
    move-result p1

    .line 130
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 133
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 136
    return v4

    .line 137
    :cond_88
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 139
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->g()I

    .line 142
    move-result p3

    .line 143
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 145
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 148
    move-result v0

    .line 149
    sub-int/2addr p3, v0

    .line 150
    if-gez p3, :cond_a4

    .line 152
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 154
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 157
    move-result p1

    .line 158
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 161
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 164
    return v4

    .line 165
    :cond_a4
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_b8

    .line 171
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 173
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 176
    move-result p1

    .line 177
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 179
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->m()I

    .line 182
    move-result p3

    .line 183
    add-int/2addr p3, p1

    .line 184
    goto :goto_be

    .line 185
    :cond_b8
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 187
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 190
    move-result p3

    .line 191
    :goto_be
    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 194
    goto :goto_db

    .line 195
    :cond_c2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 198
    move-result p1

    .line 199
    if-lez p1, :cond_d8

    .line 201
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 208
    move-result p1

    .line 209
    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 211
    if-ge p3, p1, :cond_d5

    .line 213
    move v1, v4

    .line 214
    :cond_d5
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 217
    :cond_d8
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 220
    :goto_db
    return v4

    .line 221
    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_f3

    .line 227
    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 229
    if-eqz p1, :cond_f3

    .line 231
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 233
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 235
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->h()I

    .line 238
    move-result p3

    .line 239
    sub-int/2addr p1, p3

    .line 240
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 243
    goto :goto_ff

    .line 244
    :cond_f3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 246
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 249
    move-result p1

    .line 250
    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 252
    add-int/2addr p1, p3

    .line 253
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 256
    :goto_ff
    return v4

    .line 257
    :cond_100
    :goto_100
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 259
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 261
    :cond_104
    :goto_104
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateAnchorFromPendingState(Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1302(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 24
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 27
    return-void
.end method

.method private updateDirtyPosition(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    .line 4
    move-result v0

    .line 5
    if-lt p1, v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 19
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 22
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 24
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 27
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 29
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 31
    array-length v0, v0

    .line 32
    if-lt p1, v0, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 37
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 50
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4b

    .line 56
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 58
    if-eqz v0, :cond_4b

    .line 60
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 62
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 65
    move-result p1

    .line 66
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 68
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->h()I

    .line 71
    move-result v0

    .line 72
    add-int/2addr v0, p1

    .line 73
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 75
    goto :goto_5a

    .line 76
    :cond_4b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 78
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 81
    move-result p1

    .line 82
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 84
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 87
    move-result v0

    .line 88
    sub-int/2addr p1, v0

    .line 89
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 91
    :goto_5a
    return-void
.end method

.method private updateFlexLines(I)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 20
    move-result v2

    .line 21
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 32
    move-result v3

    .line 33
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    const/high16 v7, -0x80000000

    .line 41
    if-eqz v4, :cond_4e

    .line 43
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 45
    if-eq v4, v7, :cond_31

    .line 47
    if-eq v4, v2, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v5, v6

    .line 51
    :goto_32
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 53
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_47

    .line 59
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    move-result-object v4

    .line 69
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    goto :goto_71

    .line 72
    :cond_47
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 74
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 77
    move-result v4

    .line 78
    goto :goto_71

    .line 79
    :cond_4e
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 81
    if-eq v4, v7, :cond_55

    .line 83
    if-eq v4, v3, :cond_55

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move v5, v6

    .line 87
    :goto_56
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 89
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_6b

    .line 95
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 104
    move-result-object v4

    .line 105
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 107
    goto :goto_71

    .line 108
    :cond_6b
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 110
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 113
    move-result v4

    .line 114
    :goto_71
    move v6, v4

    .line 115
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 117
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 119
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 121
    const/4 v3, -0x1

    .line 122
    if-ne v2, v3, :cond_e9

    .line 124
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 126
    if-ne v4, v3, :cond_81

    .line 128
    if-eqz v5, :cond_e9

    .line 130
    :cond_81
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 132
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_8a

    .line 138
    return-void

    .line 139
    :cond_8a
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 141
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 144
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 146
    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_ac

    .line 155
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 157
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 159
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 161
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 164
    move-result v7

    .line 165
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 167
    move v4, v0

    .line 168
    move v5, v1

    .line 169
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 172
    goto :goto_bd

    .line 173
    :cond_ac
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 175
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 177
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 179
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 182
    move-result v7

    .line 183
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 185
    move v4, v0

    .line 186
    move v5, v1

    .line 187
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 190
    :goto_bd
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 192
    iget-object p1, p1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 194
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 196
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 201
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 203
    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 206
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 208
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 210
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 212
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 215
    move-result v1

    .line 216
    aget v0, v0, v1

    .line 218
    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 221
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 223
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 225
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 228
    move-result v0

    .line 229
    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 232
    goto/16 :goto_17f

    .line 234
    :cond_e9
    if-eq v2, v3, :cond_f6

    .line 236
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 238
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 241
    move-result v3

    .line 242
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 245
    move-result v2

    .line 246
    goto :goto_fc

    .line 247
    :cond_f6
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 249
    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 252
    move-result v2

    .line 253
    :goto_fc
    move v10, v2

    .line 254
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 256
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_13c

    .line 265
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 267
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 270
    move-result v2

    .line 271
    if-lez v2, :cond_12a

    .line 273
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 275
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 277
    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 280
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 282
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 284
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 286
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 289
    move-result v8

    .line 290
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 292
    move v4, v0

    .line 293
    move v5, v1

    .line 294
    move v7, v10

    .line 295
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 298
    goto :goto_16f

    .line 299
    :cond_12a
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 301
    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 304
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 306
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 308
    const/4 v7, 0x0

    .line 309
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 311
    move v4, v0

    .line 312
    move v5, v1

    .line 313
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 316
    goto :goto_16f

    .line 317
    :cond_13c
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 319
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 322
    move-result v2

    .line 323
    if-lez v2, :cond_15e

    .line 325
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 327
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 329
    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 332
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 334
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 336
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 338
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 341
    move-result v8

    .line 342
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 344
    move v4, v1

    .line 345
    move v5, v0

    .line 346
    move v7, v10

    .line 347
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 350
    goto :goto_16f

    .line 351
    :cond_15e
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 353
    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 356
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 358
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 360
    const/4 v7, 0x0

    .line 361
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 363
    move v4, v0

    .line 364
    move v5, v1

    .line 365
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 368
    :goto_16f
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 370
    iget-object p1, p1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 372
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 374
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 376
    invoke-virtual {p1, v0, v1, v10}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 379
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 381
    invoke-virtual {p1, v10}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 384
    :goto_17f
    return-void
.end method

.method private updateLayoutState(II)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 17
    move-result v2

    .line 18
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 29
    move-result v3

    .line 30
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v0, :cond_2b

    .line 38
    iget-boolean v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 40
    if-eqz v5, :cond_2b

    .line 42
    move v5, v4

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v5, v3

    .line 45
    :goto_2c
    const/4 v6, -0x1

    .line 46
    if-ne p1, v4, :cond_148

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 51
    move-result p1

    .line 52
    sub-int/2addr p1, v4

    .line 53
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 59
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 61
    invoke-virtual {v8, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 64
    move-result v8

    .line 65
    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 68
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 71
    move-result v7

    .line 72
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 74
    iget-object v8, v8, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 76
    aget v8, v8, v7

    .line 78
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 80
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 86
    invoke-direct {p0, p1, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 92
    invoke-static {v8, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 95
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 97
    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 100
    move-result v9

    .line 101
    add-int/2addr v7, v9

    .line 102
    invoke-static {v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 105
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 107
    iget-object v7, v7, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 109
    array-length v7, v7

    .line 110
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 112
    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 115
    move-result v8

    .line 116
    if-gt v7, v8, :cond_7b

    .line 118
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 120
    invoke-static {v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 123
    goto :goto_8a

    .line 124
    :cond_7b
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 126
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 128
    iget-object v8, v8, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 130
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 133
    move-result v9

    .line 134
    aget v8, v8, v9

    .line 136
    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 139
    :goto_8a
    if-eqz v5, :cond_bc

    .line 141
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 143
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 145
    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 148
    move-result v7

    .line 149
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 152
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 154
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 156
    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 159
    move-result p1

    .line 160
    neg-int p1, p1

    .line 161
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 163
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->k()I

    .line 166
    move-result v7

    .line 167
    add-int/2addr v7, p1

    .line 168
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 171
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 173
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 176
    move-result v5

    .line 177
    if-ltz v5, :cond_b8

    .line 179
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 181
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 184
    move-result v3

    .line 185
    :cond_b8
    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 188
    goto :goto_d9

    .line 189
    :cond_bc
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 191
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 193
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 196
    move-result v5

    .line 197
    invoke-static {v3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 200
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 202
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 204
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 207
    move-result p1

    .line 208
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 210
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->g()I

    .line 213
    move-result v5

    .line 214
    sub-int/2addr p1, v5

    .line 215
    invoke-static {v3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 218
    :goto_d9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 220
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 223
    move-result p1

    .line 224
    if-eq p1, v6, :cond_f0

    .line 226
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 228
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 231
    move-result p1

    .line 232
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 234
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 237
    move-result v3

    .line 238
    sub-int/2addr v3, v4

    .line 239
    if-le p1, v3, :cond_1f0

    .line 241
    :cond_f0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 243
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 246
    move-result p1

    .line 247
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    .line 250
    move-result v3

    .line 251
    if-gt p1, v3, :cond_1f0

    .line 253
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 255
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 258
    move-result p1

    .line 259
    sub-int v7, p2, p1

    .line 261
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 263
    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 266
    if-lez v7, :cond_1f0

    .line 268
    if-eqz v0, :cond_11f

    .line 270
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 272
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 274
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 276
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 279
    move-result v8

    .line 280
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 282
    move v5, v1

    .line 283
    move v6, v2

    .line 284
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 287
    goto :goto_130

    .line 288
    :cond_11f
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 290
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 292
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 294
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 297
    move-result v8

    .line 298
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 300
    move v5, v1

    .line 301
    move v6, v2

    .line 302
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 305
    :goto_130
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 307
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 309
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 312
    move-result v0

    .line 313
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 316
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 318
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 320
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 323
    move-result v0

    .line 324
    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 327
    goto/16 :goto_1f0

    .line 329
    :cond_148
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 332
    move-result-object p1

    .line 333
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 335
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 337
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 340
    move-result v1

    .line 341
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 344
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 347
    move-result v0

    .line 348
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 350
    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 352
    aget v1, v1, v0

    .line 354
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 356
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 362
    invoke-direct {p0, p1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    .line 365
    move-result-object p1

    .line 366
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 368
    invoke-static {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 371
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 373
    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 375
    aget v1, v1, v0

    .line 377
    if-ne v1, v6, :cond_17b

    .line 379
    move v1, v3

    .line 380
    :cond_17b
    if-lez v1, :cond_192

    .line 382
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 384
    add-int/lit8 v6, v1, -0x1

    .line 386
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v2

    .line 390
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 392
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 394
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    .line 397
    move-result v2

    .line 398
    sub-int/2addr v0, v2

    .line 399
    invoke-static {v6, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 402
    goto :goto_197

    .line 403
    :cond_192
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 405
    invoke-static {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 408
    :goto_197
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 410
    if-lez v1, :cond_19d

    .line 412
    sub-int/2addr v1, v4

    .line 413
    goto :goto_19e

    .line 414
    :cond_19d
    move v1, v3

    .line 415
    :goto_19e
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 418
    if-eqz v5, :cond_1d2

    .line 420
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 422
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 424
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 427
    move-result v1

    .line 428
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 431
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 433
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 435
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 438
    move-result p1

    .line 439
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 441
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    .line 444
    move-result v1

    .line 445
    sub-int/2addr p1, v1

    .line 446
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 449
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 451
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 454
    move-result v0

    .line 455
    if-ltz v0, :cond_1ce

    .line 457
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 459
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 462
    move-result v3

    .line 463
    :cond_1ce
    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 466
    goto :goto_1f0

    .line 467
    :cond_1d2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 469
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 471
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 474
    move-result v1

    .line 475
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 478
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 480
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 482
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 485
    move-result p1

    .line 486
    neg-int p1, p1

    .line 487
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 489
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 492
    move-result v1

    .line 493
    add-int/2addr v1, p1

    .line 494
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 497
    :cond_1f0
    :goto_1f0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 499
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 502
    move-result v0

    .line 503
    sub-int/2addr p2, v0

    .line 504
    invoke-static {p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 507
    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .registers 6

    .line 1
    if-eqz p3, :cond_6

    .line 3
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 13
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_25

    .line 19
    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 21
    if-eqz p3, :cond_25

    .line 23
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 25
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 32
    move-result v1

    .line 33
    sub-int/2addr v0, v1

    .line 34
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 37
    goto :goto_35

    .line 38
    :cond_25
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 40
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 45
    move-result v0

    .line 46
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 49
    move-result v1

    .line 50
    sub-int/2addr v0, v1

    .line 51
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 54
    :goto_35
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 56
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 59
    move-result v0

    .line 60
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 63
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 69
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 71
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 74
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 76
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 79
    move-result v1

    .line 80
    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 83
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 85
    const/high16 v1, -0x80000000

    .line 87
    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 90
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 92
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 95
    move-result v1

    .line 96
    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 99
    if-eqz p2, :cond_9e

    .line 101
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 103
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 106
    move-result p2

    .line 107
    if-le p2, v0, :cond_9e

    .line 109
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 112
    move-result p2

    .line 113
    if-ltz p2, :cond_9e

    .line 115
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 118
    move-result p2

    .line 119
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 121
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 124
    move-result p3

    .line 125
    sub-int/2addr p3, v0

    .line 126
    if-ge p2, p3, :cond_9e

    .line 128
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 130
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 133
    move-result p1

    .line 134
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 140
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 142
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1508(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 145
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 147
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 150
    move-result p3

    .line 151
    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    .line 154
    move-result p1

    .line 155
    add-int/2addr p1, p3

    .line 156
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 159
    :cond_9e
    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .registers 6

    .line 1
    if-eqz p3, :cond_6

    .line 3
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 13
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_2e

    .line 19
    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 21
    if-eqz p3, :cond_2e

    .line 23
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 25
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 30
    move-result v0

    .line 31
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 34
    move-result v1

    .line 35
    sub-int/2addr v0, v1

    .line 36
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 38
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 41
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 46
    goto :goto_3e

    .line 47
    :cond_2e
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 49
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 52
    move-result v0

    .line 53
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 55
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 58
    move-result v1

    .line 59
    sub-int/2addr v0, v1

    .line 60
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 63
    :goto_3e
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 65
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 68
    move-result v0

    .line 69
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 72
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 78
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 80
    const/4 v0, -0x1

    .line 81
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 84
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 86
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 89
    move-result v0

    .line 90
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 93
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 95
    const/high16 v0, -0x80000000

    .line 97
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 100
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 102
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 105
    move-result v0

    .line 106
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 109
    if-eqz p2, :cond_9f

    .line 111
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 114
    move-result p2

    .line 115
    if-lez p2, :cond_9f

    .line 117
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 119
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 122
    move-result p2

    .line 123
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 126
    move-result p3

    .line 127
    if-le p2, p3, :cond_9f

    .line 129
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 131
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 134
    move-result p1

    .line 135
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 141
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 143
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1510(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 146
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 148
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 151
    move-result p3

    .line 152
    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    .line 155
    move-result p1

    .line 156
    sub-int/2addr p3, p1

    .line 157
    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 160
    :cond_9f
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_20

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    .line 23
    if-eqz v2, :cond_1d

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v2

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v2, v1

    .line 31
    :goto_1e
    if-le v0, v2, :cond_21

    .line 33
    :cond_20
    const/4 v1, 0x1

    .line 34
    :cond_21
    return v1
.end method

.method public canScrollVertically()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_b

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 9
    move-result v0

    .line 10
    xor-int/2addr v0, v1

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_24

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 22
    move-result v0

    .line 23
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    .line 25
    if-eqz v3, :cond_1f

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v3

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v3, v2

    .line 33
    :goto_20
    if-le v0, v3, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v1, v2

    .line 37
    :cond_24
    :goto_24
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 3
    return p1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    move-result v0

    .line 18
    if-ge p1, v0, :cond_15

    .line 20
    const/4 p1, -0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x1

    .line 23
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_24

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    .line 32
    int-to-float p1, p1

    .line 33
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    return-object v0

    .line 37
    :cond_24
    new-instance v0, Landroid/graphics/PointF;

    .line 39
    int-to-float p1, p1

    .line 40
    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 43
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, -0x1

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 18
    move-result v0

    .line 19
    :goto_12
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_d

    .line 12
    const/4 v0, -0x1

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    move-result v0

    .line 18
    :goto_11
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 18
    move-result v2

    .line 19
    :goto_12
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    move-result v1

    .line 20
    :goto_13
    return v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public getAlignContent()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getAlignItems()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 3
    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    .line 12
    move-result v1

    .line 13
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getChildWidthMeasureSpec(III)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    .line 12
    move-result v1

    .line 13
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 14
    move-result p1

    .line 15
    :goto_e
    add-int/2addr p1, v0

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 24
    move-result p1

    .line 25
    goto :goto_e
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_10

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 14
    move-result p1

    .line 15
    :goto_e
    add-int/2addr p1, p2

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 24
    move-result p1

    .line 25
    goto :goto_e
.end method

.method public getFlexDirection()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 3
    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 14
    const-wide v1, 0x7fffffffffffffffL

    .line 19
    invoke-virtual {v0, v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->k(JI)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 25
    return-object p1
.end method

.method public getFlexItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-ge v2, v1, :cond_29

    .line 21
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_23

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_26
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_12

    .line 42
    :cond_29
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getFlexWrap()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 3
    return v0
.end method

.method public getJustifyContent()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 3
    return v0
.end method

.method public getLargestMainSize()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    const/high16 v0, -0x80000000

    .line 13
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    :goto_12
    if-ge v1, v2, :cond_25

    .line 21
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 23
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 29
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 31
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v0

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_12

    .line 38
    :cond_25
    return v0
.end method

.method public getMaxLine()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 3
    return v0
.end method

.method public getPositionToFlexLineIndex(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 3
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 5
    aget p1, v0, p1

    .line 7
    return p1
.end method

.method public getRecycleChildrenOnDetach()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 3
    return v0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getSumOfCrossSize()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v1, v0, :cond_18

    .line 11
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 19
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return v2
.end method

.method public isLayoutRtl()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 3
    return v0
.end method

.method public isMainAxisDirectionHorizontal()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_9

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :cond_9
    :goto_9
    return v1
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 4
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/view/View;

    .line 10
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    .line 12
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 4
    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 6
    if-eqz p1, :cond_d

    .line 8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 11
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->b()V

    .line 14
    :cond_d
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 7
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 11
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 7
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    iput-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 11
    iget-boolean v1, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveLayoutDirection()V

    .line 19
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 22
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 25
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 30
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 32
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 35
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 40
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 46
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 48
    if-eqz v1, :cond_3f

    .line 50
    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$600(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3f

    .line 56
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 58
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$200(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 64
    :cond_3f
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 66
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 69
    move-result v1

    .line 70
    const/4 v3, 0x1

    .line 71
    if-eqz v1, :cond_51

    .line 73
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 75
    const/4 v4, -0x1

    .line 76
    if-ne v1, v4, :cond_51

    .line 78
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 80
    if-eqz v1, :cond_60

    .line 82
    :cond_51
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 84
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 89
    invoke-direct {p0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 94
    invoke-static {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 97
    :cond_60
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 102
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_71

    .line 108
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 110
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 113
    goto :goto_76

    .line 114
    :cond_71
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 116
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 119
    :goto_76
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateFlexLines(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 124
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_9d

    .line 130
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 135
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 137
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 140
    move-result v0

    .line 141
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 143
    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 146
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 148
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 151
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 153
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 156
    move-result v1

    .line 157
    goto :goto_b8

    .line 158
    :cond_9d
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 163
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 165
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 168
    move-result v1

    .line 169
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 171
    invoke-direct {p0, v0, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 174
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 176
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 179
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 181
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 184
    move-result v0

    .line 185
    :goto_b8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 188
    move-result v4

    .line 189
    if-lez v4, :cond_d7

    .line 191
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 193
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_cf

    .line 199
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 202
    move-result v1

    .line 203
    add-int/2addr v0, v1

    .line 204
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 207
    goto :goto_d7

    .line 208
    :cond_cf
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 211
    move-result v0

    .line 212
    add-int/2addr v1, v0

    .line 213
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 216
    :cond_d7
    :goto_d7
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 10
    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 14
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 16
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 18
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 21
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 26
    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V
    .registers 5

    .line 1
    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_1f

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 19
    move-result p1

    .line 20
    add-int/2addr p1, p2

    .line 21
    iget p2, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 23
    add-int/2addr p2, p1

    .line 24
    iput p2, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 26
    iget p2, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 28
    add-int/2addr p2, p1

    .line 29
    iput p2, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 31
    goto :goto_32

    .line 32
    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 39
    move-result p1

    .line 40
    add-int/2addr p1, p2

    .line 41
    iget p2, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 43
    add-int/2addr p2, p1

    .line 44
    iput p2, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 46
    iget p2, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 48
    add-int/2addr p2, p1

    .line 49
    iput p2, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 51
    :goto_32
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V
    .registers 2

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 7
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 12
    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 16
    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_34

    .line 25
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 32
    move-result v2

    .line 33
    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$202(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 36
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 38
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 44
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->k()I

    .line 47
    move-result v2

    .line 48
    sub-int/2addr v1, v2

    .line 49
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$302(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 52
    goto :goto_37

    .line 53
    :cond_34
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$400(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 56
    :goto_37
    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 9
    if-nez v0, :cond_11

    .line 11
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 24
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 27
    move-result p3

    .line 28
    add-int/2addr p3, p1

    .line 29
    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 32
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 34
    neg-int p3, p1

    .line 35
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 38
    return p1

    .line 39
    :cond_26
    :goto_26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 42
    move-result p1

    .line 43
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 48
    return p1
.end method

.method public scrollToPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 3
    const/high16 p1, -0x80000000

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$400(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 17
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_26

    .line 7
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 9
    if-nez v0, :cond_11

    .line 11
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 24
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    .line 27
    move-result p3

    .line 28
    add-int/2addr p3, p1

    .line 29
    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 32
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 34
    neg-int p3, p1

    .line 35
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 38
    return p1

    .line 39
    :cond_26
    :goto_26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 42
    move-result p1

    .line 43
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 48
    return p1
.end method

.method public setAlignContent(I)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setAlignItems(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    if-ne p1, v1, :cond_f

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 13
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 16
    :cond_f
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 21
    :cond_14
    return-void
.end method

.method public setFlexDirection(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 8
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 13
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 15
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 21
    :cond_14
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setFlexWrap(I)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1c

    .line 4
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 6
    if-eq v0, p1, :cond_1b

    .line 8
    if-eqz v0, :cond_b

    .line 10
    if-nez p1, :cond_11

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 15
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 18
    :cond_11
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 23
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 31
    const-string v0, "wrap_reverse is not supported in FlexboxLayoutManager"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public setJustifyContent(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setMaxLine(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 3
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .registers 4

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/k;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/k;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$x;->setTargetPosition(I)V

    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 16
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    return-void
.end method
