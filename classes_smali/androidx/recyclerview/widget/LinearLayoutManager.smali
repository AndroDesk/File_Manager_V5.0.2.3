.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/f$h;
.implements Landroidx/recyclerview/widget/RecyclerView$x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$b;,
        Landroidx/recyclerview/widget/LinearLayoutManager$a;,
        Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/LinearLayoutManager$c;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field public final mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$b;

.field private mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

.field public mOrientation:I

.field public mOrientationHelper:Landroidx/recyclerview/widget/p;

.field public mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field public mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 11
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 12
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array p1, p1, [I

    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 16
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 20
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 21
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 22
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 24
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 26
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 27
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-array v0, v0, [I

    .line 29
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 30
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 31
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 32
    iget-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 33
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 24
    xor-int/2addr v0, v2

    .line 25
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 28
    move-result-object v4

    .line 29
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 31
    move-object v0, p1

    .line 32
    move-object v2, v3

    .line 33
    move-object v3, v4

    .line 34
    move-object v4, p0

    .line 35
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/t;->a(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 24
    xor-int/2addr v0, v2

    .line 25
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 28
    move-result-object v4

    .line 29
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 31
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 33
    move-object v0, p1

    .line 34
    move-object v2, v3

    .line 35
    move-object v3, v4

    .line 36
    move-object v4, p0

    .line 37
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/t;->b(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 24
    xor-int/2addr v0, v2

    .line 25
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 28
    move-result-object v4

    .line 29
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 31
    move-object v0, p1

    .line 32
    move-object v2, v3

    .line 33
    move-object v3, v4

    .line 34
    move-object v4, p0

    .line 35
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/t;->c(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    return-object v0
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    if-lez v0, :cond_23

    .line 10
    neg-int v0, v0

    .line 11
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_22

    .line 19
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 21
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->g()I

    .line 24
    move-result p3

    .line 25
    sub-int/2addr p3, p1

    .line 26
    if-lez p3, :cond_22

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 30
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 33
    add-int/2addr p3, p2

    .line 34
    return p3

    .line 35
    :cond_22
    return p2

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 6
    move-result v0

    .line 7
    sub-int v0, p1, v0

    .line 9
    if-lez v0, :cond_23

    .line 11
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_22

    .line 19
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 21
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->k()I

    .line 24
    move-result p3

    .line 25
    sub-int/2addr p1, p3

    .line 26
    if-lez p1, :cond_22

    .line 28
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 30
    neg-int p4, p1

    .line 31
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 34
    sub-int/2addr p2, p1

    .line 35
    :cond_22
    return p2

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    :goto_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 20

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$y;->k:Z

    .line 8
    if-eqz v3, :cond_a7

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_a7

    .line 16
    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 18
    if-nez v3, :cond_a7

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1b

    .line 26
    goto/16 :goto_a7

    .line 28
    :cond_1b
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->d:Ljava/util/List;

    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 42
    move-result v6

    .line 43
    move v7, v5

    .line 44
    move v8, v7

    .line 45
    move v9, v8

    .line 46
    :goto_2d
    if-ge v7, v4, :cond_64

    .line 48
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v10

    .line 52
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 54
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_3c

    .line 60
    goto :goto_61

    .line 61
    :cond_3c
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 64
    move-result v11

    .line 65
    const/4 v12, 0x1

    .line 66
    if-ge v11, v6, :cond_45

    .line 68
    move v11, v12

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v11, v5

    .line 71
    :goto_46
    iget-boolean v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 73
    const/4 v14, -0x1

    .line 74
    if-eq v11, v13, :cond_4c

    .line 76
    move v12, v14

    .line 77
    :cond_4c
    if-ne v12, v14, :cond_58

    .line 79
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 81
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 83
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 86
    move-result v10

    .line 87
    add-int/2addr v8, v10

    .line 88
    goto :goto_61

    .line 89
    :cond_58
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 91
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 93
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 96
    move-result v10

    .line 97
    add-int/2addr v9, v10

    .line 98
    :goto_61
    add-int/lit8 v7, v7, 0x1

    .line 100
    goto :goto_2d

    .line 101
    :cond_64
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 103
    iput-object v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 105
    const/4 v3, 0x0

    .line 106
    if-lez v8, :cond_86

    .line 108
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 115
    move-result v4

    .line 116
    move/from16 v6, p3

    .line 118
    invoke-direct {p0, v4, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 121
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 123
    iput v8, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 125
    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 127
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    .line 130
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 132
    invoke-virtual {p0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 135
    :cond_86
    if-lez v9, :cond_a3

    .line 137
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 144
    move-result v4

    .line 145
    move/from16 v6, p4

    .line 147
    invoke-direct {p0, v4, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 150
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 152
    iput v9, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 154
    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 156
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    .line 159
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 161
    invoke-virtual {p0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 164
    :cond_a3
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 166
    iput-object v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 168
    :cond_a7
    :goto_a7
    return-void
.end method

.method private logChildren()V
    .registers 6

    .line 1
    const-string v0, "LinearLayoutManager"

    .line 3
    const-string v1, "internal representation of views on the screen"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_37

    .line 15
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "item "

    .line 21
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v4, ", coord:"

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 39
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_8

    .line 56
    :cond_37
    const-string v1, "=============="

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
    .registers 6

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_19

    .line 10
    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 12
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 14
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne p2, v2, :cond_16

    .line 19
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .registers 4

    .line 1
    if-ne p2, p3, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    if-le p3, p2, :cond_f

    .line 6
    add-int/lit8 p3, p3, -0x1

    .line 8
    :goto_7
    if-lt p3, p2, :cond_17

    .line 10
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 13
    add-int/lit8 p3, p3, -0x1

    .line 15
    goto :goto_7

    .line 16
    :cond_f
    :goto_f
    if-le p2, p3, :cond_17

    .line 18
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 23
    goto :goto_f

    .line 24
    :cond_17
    return-void
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-gez p2, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->f()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, p2

    .line 15
    add-int/2addr v1, p3

    .line 16
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 18
    if-eqz p2, :cond_33

    .line 20
    const/4 p2, 0x0

    .line 21
    move p3, p2

    .line 22
    :goto_15
    if-ge p3, v0, :cond_53

    .line 24
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 30
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 33
    move-result v3

    .line 34
    if-lt v3, v1, :cond_2f

    .line 36
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 38
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p;->o(Landroid/view/View;)I

    .line 41
    move-result v2

    .line 42
    if-ge v2, v1, :cond_2c

    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    add-int/lit8 p3, p3, 0x1

    .line 47
    goto :goto_15

    .line 48
    :cond_2f
    :goto_2f
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 51
    return-void

    .line 52
    :cond_33
    add-int/lit8 v0, v0, -0x1

    .line 54
    move p2, v0

    .line 55
    :goto_36
    if-ltz p2, :cond_53

    .line 57
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object p3

    .line 61
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 63
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 66
    move-result v2

    .line 67
    if-lt v2, v1, :cond_50

    .line 69
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 71
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/p;->o(Landroid/view/View;)I

    .line 74
    move-result p3

    .line 75
    if-ge p3, v1, :cond_4d

    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    add-int/lit8 p2, p2, -0x1

    .line 80
    goto :goto_36

    .line 81
    :cond_50
    :goto_50
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 84
    :cond_53
    return-void
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .registers 8

    .line 1
    if-gez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    sub-int/2addr p2, p3

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result p3

    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 11
    if-eqz v0, :cond_2d

    .line 13
    add-int/lit8 p3, p3, -0x1

    .line 15
    move v0, p3

    .line 16
    :goto_f
    if-ltz v0, :cond_4c

    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 24
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 27
    move-result v2

    .line 28
    if-gt v2, p2, :cond_29

    .line 30
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 32
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/p;->n(Landroid/view/View;)I

    .line 35
    move-result v1

    .line 36
    if-le v1, p2, :cond_26

    .line 38
    goto :goto_29

    .line 39
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_f

    .line 42
    :cond_29
    :goto_29
    invoke-direct {p0, p1, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 45
    return-void

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    move v1, v0

    .line 48
    :goto_2f
    if-ge v1, p3, :cond_4c

    .line 50
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 56
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 59
    move-result v3

    .line 60
    if-gt v3, p2, :cond_49

    .line 62
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 64
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p;->n(Landroid/view/View;)I

    .line 67
    move-result v2

    .line 68
    if-le v2, p2, :cond_46

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_2f

    .line 74
    :cond_49
    :goto_49
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    .line 77
    :cond_4c
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_12

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    :goto_12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 23
    :goto_16
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    .registers 9

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_3b

    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_30

    .line 31
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 34
    move-result v4

    .line 35
    if-ltz v4, :cond_30

    .line 37
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 40
    move-result v3

    .line 41
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 44
    move-result v4

    .line 45
    if-ge v3, v4, :cond_30

    .line 47
    move v3, v2

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, v1

    .line 50
    :goto_31
    if-eqz v3, :cond_3b

    .line 52
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c(ILandroid/view/View;)V

    .line 59
    return v2

    .line 60
    :cond_3b
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 62
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 64
    if-eq v0, v3, :cond_42

    .line 66
    return v1

    .line 67
    :cond_42
    iget-boolean v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 69
    invoke-virtual {p0, p1, p2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ZZ)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_8b

    .line 75
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 78
    move-result v0

    .line 79
    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(ILandroid/view/View;)V

    .line 82
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 84
    if-nez p2, :cond_8a

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_8a

    .line 92
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 94
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 97
    move-result p2

    .line 98
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 100
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 103
    move-result p1

    .line 104
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 106
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 109
    move-result v0

    .line 110
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 112
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->g()I

    .line 115
    move-result v3

    .line 116
    if-gt p1, v0, :cond_79

    .line 118
    if-ge p2, v0, :cond_79

    .line 120
    move v4, v2

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v4, v1

    .line 123
    :goto_7a
    if-lt p2, v3, :cond_7f

    .line 125
    if-le p1, v3, :cond_7f

    .line 127
    move v1, v2

    .line 128
    :cond_7f
    if-nez v4, :cond_83

    .line 130
    if-eqz v1, :cond_8a

    .line 132
    :cond_83
    iget-boolean p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 134
    if-eqz p1, :cond_88

    .line 136
    move v0, v3

    .line 137
    :cond_88
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 139
    :cond_8a
    return v2

    .line 140
    :cond_8b
    return v1
.end method

.method private updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    .registers 8

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_f9

    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v0, v2, :cond_c

    .line 11
    goto/16 :goto_f9

    .line 13
    :cond_c
    const/high16 v3, -0x80000000

    .line 15
    if-ltz v0, :cond_f5

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 20
    move-result p1

    .line 21
    if-lt v0, p1, :cond_18

    .line 23
    goto/16 :goto_f5

    .line 25
    :cond_18
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 27
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v0, :cond_4c

    .line 34
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 36
    if-ltz v4, :cond_27

    .line 38
    move v4, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v4, v1

    .line 41
    :goto_28
    if-eqz v4, :cond_4c

    .line 43
    iget-boolean p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->c:Z

    .line 45
    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 47
    if-eqz p1, :cond_3e

    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 54
    move-result p1

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 57
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    .line 59
    sub-int/2addr p1, v0

    .line 60
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 62
    goto :goto_4b

    .line 63
    :cond_3e
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 65
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 68
    move-result p1

    .line 69
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 71
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    .line 73
    add-int/2addr p1, v0

    .line 74
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 76
    :goto_4b
    return v2

    .line 77
    :cond_4c
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 79
    if-ne v0, v3, :cond_d7

    .line 81
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_b7

    .line 87
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 89
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 92
    move-result v0

    .line 93
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 95
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->l()I

    .line 98
    move-result v3

    .line 99
    if-le v0, v3, :cond_68

    .line 101
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 104
    return v2

    .line 105
    :cond_68
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 107
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 110
    move-result v0

    .line 111
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 113
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->k()I

    .line 116
    move-result v3

    .line 117
    sub-int/2addr v0, v3

    .line 118
    if-gez v0, :cond_82

    .line 120
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 125
    move-result p1

    .line 126
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 128
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 130
    return v2

    .line 131
    :cond_82
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 133
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 136
    move-result v0

    .line 137
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 139
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 142
    move-result v1

    .line 143
    sub-int/2addr v0, v1

    .line 144
    if-gez v0, :cond_9c

    .line 146
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 148
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 151
    move-result p1

    .line 152
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 154
    iput-boolean v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 156
    return v2

    .line 157
    :cond_9c
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 159
    if-eqz v0, :cond_ae

    .line 161
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 163
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 166
    move-result p1

    .line 167
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 169
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    .line 172
    move-result v0

    .line 173
    add-int/2addr v0, p1

    .line 174
    goto :goto_b4

    .line 175
    :cond_ae
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 177
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 180
    move-result v0

    .line 181
    :goto_b4
    iput v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 183
    goto :goto_d6

    .line 184
    :cond_b7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 187
    move-result p1

    .line 188
    if-lez p1, :cond_d3

    .line 190
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 197
    move-result p1

    .line 198
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 200
    if-ge v0, p1, :cond_cb

    .line 202
    move p1, v2

    .line 203
    goto :goto_cc

    .line 204
    :cond_cb
    move p1, v1

    .line 205
    :goto_cc
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 207
    if-ne p1, v0, :cond_d1

    .line 209
    move v1, v2

    .line 210
    :cond_d1
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 212
    :cond_d3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 215
    :goto_d6
    return v2

    .line 216
    :cond_d7
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 218
    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 220
    if-eqz p1, :cond_e9

    .line 222
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 224
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 227
    move-result p1

    .line 228
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 230
    sub-int/2addr p1, v0

    .line 231
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 233
    goto :goto_f4

    .line 234
    :cond_e9
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 236
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 239
    move-result p1

    .line 240
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 242
    add-int/2addr p1, v0

    .line 243
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 245
    :goto_f4
    return v2

    .line 246
    :cond_f5
    :goto_f5
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 248
    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 250
    :cond_f9
    :goto_f9
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 18
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 20
    if-eqz p1, :cond_1c

    .line 22
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 25
    move-result p1

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 32
    return-void
.end method

.method private updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    .line 6
    move-result v1

    .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Z

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 11
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 15
    const/4 v1, 0x0

    .line 16
    aput v1, v0, v1

    .line 18
    const/4 v2, 0x1

    .line 19
    aput v1, v0, v2

    .line 21
    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V

    .line 24
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 26
    aget p4, p4, v1

    .line 28
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p4

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 34
    aget v0, v0, v2

    .line 36
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result v0

    .line 40
    if-ne p1, v2, :cond_2a

    .line 42
    move v1, v2

    .line 43
    :cond_2a
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 45
    if-eqz v1, :cond_30

    .line 47
    move v3, v0

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, p4

    .line 50
    :goto_31
    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 52
    if-eqz v1, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move p4, v0

    .line 56
    :goto_37
    iput p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 58
    const/4 p4, -0x1

    .line 59
    if-eqz v1, :cond_73

    .line 61
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->h()I

    .line 66
    move-result v0

    .line 67
    add-int/2addr v0, v3

    .line 68
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 76
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 78
    if-eqz v1, :cond_50

    .line 80
    move v2, p4

    .line 81
    :cond_50
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 83
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 86
    move-result p4

    .line 87
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 89
    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 91
    add-int/2addr p4, v2

    .line 92
    iput p4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 94
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 96
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 99
    move-result p4

    .line 100
    iput p4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 102
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 104
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 107
    move-result p1

    .line 108
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 110
    invoke-virtual {p4}, Landroidx/recyclerview/widget/p;->g()I

    .line 113
    move-result p4

    .line 114
    sub-int/2addr p1, p4

    .line 115
    goto :goto_af

    .line 116
    :cond_73
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 122
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 124
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 126
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->k()I

    .line 129
    move-result v3

    .line 130
    add-int/2addr v3, v1

    .line 131
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 133
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 135
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 137
    if-eqz v1, :cond_8b

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move v2, p4

    .line 141
    :goto_8c
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 143
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 146
    move-result p4

    .line 147
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 149
    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 151
    add-int/2addr p4, v2

    .line 152
    iput p4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 154
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 156
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 159
    move-result p4

    .line 160
    iput p4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 162
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 164
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 167
    move-result p1

    .line 168
    neg-int p1, p1

    .line 169
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 171
    invoke-virtual {p4}, Landroidx/recyclerview/widget/p;->k()I

    .line 174
    move-result p4

    .line 175
    add-int/2addr p1, p4

    .line 176
    :goto_af
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 178
    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 180
    if-eqz p3, :cond_b8

    .line 182
    sub-int/2addr p2, p1

    .line 183
    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 185
    :cond_b8
    iput p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 187
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .registers 6

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    goto :goto_15

    :cond_14
    move v1, v2

    .line 4
    :goto_15
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 5
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 6
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 7
    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    const/high16 p1, -0x80000000

    .line 8
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .registers 3

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .registers 5

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    move p1, v1

    .line 5
    :goto_18
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 6
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 7
    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    const/high16 p1, -0x80000000

    .line 8
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
    .registers 3

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v0, v2, :cond_e

    .line 13
    move v0, v1

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    move v0, p1

    .line 16
    move p1, v1

    .line 17
    :goto_10
    aput p1, p2, v1

    .line 19
    const/4 p1, 0x1

    .line 20
    aput v0, p2, p1

    .line 22
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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

.method public canScrollVertically()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move p1, p2

    .line 7
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_24

    .line 13
    if-nez p1, :cond_f

    .line 15
    goto :goto_24

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 19
    const/4 p2, 0x1

    .line 20
    if-lez p1, :cond_17

    .line 22
    move v0, p2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, -0x1

    .line 25
    :goto_18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 28
    move-result p1

    .line 29
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 34
    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_13

    .line 8
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 10
    if-ltz v4, :cond_d

    .line 12
    move v5, v3

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v5, v1

    .line 15
    :goto_e
    if-eqz v5, :cond_13

    .line 17
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->c:Z

    .line 19
    goto :goto_22

    .line 20
    :cond_13
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 23
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 25
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 27
    if-ne v4, v2, :cond_22

    .line 29
    if-eqz v0, :cond_21

    .line 31
    add-int/lit8 v4, p1, -0x1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v4, v1

    .line 35
    :cond_22
    :goto_22
    if-eqz v0, :cond_25

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v2, v3

    .line 39
    :goto_26
    move v0, v1

    .line 40
    :goto_27
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 42
    if-ge v0, v3, :cond_39

    .line 44
    if-ltz v4, :cond_39

    .line 46
    if-ge v4, p1, :cond_39

    .line 48
    move-object v3, p2

    .line 49
    check-cast v3, Landroidx/recyclerview/widget/e$b;

    .line 51
    invoke-virtual {v3, v4, v1}, Landroidx/recyclerview/widget/e$b;->a(II)V

    .line 54
    add-int/2addr v4, v2

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_27

    .line 58
    :cond_39
    return-void
.end method

.method public collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 5

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 3
    if-ltz v0, :cond_16

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 8
    move-result p1

    .line 9
    if-ge v0, p1, :cond_16

    .line 11
    const/4 p1, 0x0

    .line 12
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result p1

    .line 18
    check-cast p3, Landroidx/recyclerview/widget/e$b;

    .line 20
    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/e$b;->a(II)V

    .line 23
    :cond_16
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

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
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ge p1, v1, :cond_15

    .line 21
    move v0, v2

    .line 22
    :cond_15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 24
    if-eq v0, p1, :cond_1a

    .line 26
    const/4 v2, -0x1

    .line 27
    :cond_1a
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_26

    .line 32
    new-instance p1, Landroid/graphics/PointF;

    .line 34
    int-to-float v1, v2

    .line 35
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 38
    return-object p1

    .line 39
    :cond_26
    new-instance p1, Landroid/graphics/PointF;

    .line 41
    int-to-float v1, v2

    .line 42
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 45
    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public convertFocusDirectionToLayoutDirection(I)I
    .registers 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_43

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_36

    .line 8
    const/16 v2, 0x11

    .line 10
    const/high16 v3, -0x80000000

    .line 12
    if-eq p1, v2, :cond_2f

    .line 14
    const/16 v2, 0x21

    .line 16
    if-eq p1, v2, :cond_28

    .line 18
    const/16 v0, 0x42

    .line 20
    if-eq p1, v0, :cond_21

    .line 22
    const/16 v0, 0x82

    .line 24
    if-eq p1, v0, :cond_1a

    .line 26
    return v3

    .line 27
    :cond_1a
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 29
    if-ne p1, v1, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v1, v3

    .line 33
    :goto_20
    return v1

    .line 34
    :cond_21
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 36
    if-nez p1, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v3

    .line 40
    :goto_27
    return v1

    .line 41
    :cond_28
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 43
    if-ne p1, v1, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v0, v3

    .line 47
    :goto_2e
    return v0

    .line 48
    :cond_2f
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 50
    if-nez p1, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v0, v3

    .line 54
    :goto_35
    return v0

    .line 55
    :cond_36
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 57
    if-ne p1, v1, :cond_3b

    .line 59
    return v1

    .line 60
    :cond_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_42

    .line 66
    return v0

    .line 67
    :cond_42
    return v1

    .line 68
    :cond_43
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 70
    if-ne p1, v1, :cond_48

    .line 72
    return v0

    .line 73
    :cond_48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4f

    .line 79
    return v1

    .line 80
    :cond_4f
    return v0
.end method

.method public createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$c;
    .registers 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;-><init>()V

    .line 6
    return-object v0
.end method

.method public ensureLayoutState()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 11
    :cond_a
    return-void
.end method

.method public fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I
    .registers 12

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 3
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 5
    const/high16 v2, -0x80000000

    .line 7
    if-eq v1, v2, :cond_10

    .line 9
    if-gez v0, :cond_d

    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 14
    :cond_d
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    .line 17
    :cond_10
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 19
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 21
    add-int/2addr v1, v3

    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    .line 24
    :cond_17
    iget-boolean v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Z

    .line 26
    if-nez v4, :cond_1d

    .line 28
    if-lez v1, :cond_70

    .line 30
    :cond_1d
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 32
    const/4 v5, 0x0

    .line 33
    if-ltz v4, :cond_2a

    .line 35
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 38
    move-result v6

    .line 39
    if-ge v4, v6, :cond_2a

    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v4, v5

    .line 44
    :goto_2b
    if-eqz v4, :cond_70

    .line 46
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 48
    iput-boolean v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    .line 50
    iput-boolean v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 52
    iput-boolean v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    .line 54
    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V

    .line 57
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    .line 59
    if-eqz v4, :cond_3d

    .line 61
    goto :goto_70

    .line 62
    :cond_3d
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 64
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 66
    iget v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 68
    mul-int/2addr v6, v5

    .line 69
    add-int/2addr v6, v4

    .line 70
    iput v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 72
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 74
    if-eqz v4, :cond_53

    .line 76
    iget-object v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 78
    if-nez v4, :cond_53

    .line 80
    iget-boolean v4, p3, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 82
    if-nez v4, :cond_59

    .line 84
    :cond_53
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 86
    sub-int/2addr v4, v5

    .line 87
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 89
    sub-int/2addr v1, v5

    .line 90
    :cond_59
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 92
    if-eq v4, v2, :cond_6a

    .line 94
    add-int/2addr v4, v5

    .line 95
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 97
    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 99
    if-gez v5, :cond_67

    .line 101
    add-int/2addr v4, v5

    .line 102
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 104
    :cond_67
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    .line 107
    :cond_6a
    if-eqz p4, :cond_17

    .line 109
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    .line 111
    if-eqz v4, :cond_17

    .line 113
    :cond_70
    :goto_70
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 115
    sub-int/2addr v0, p1

    .line 116
    return v0
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
    invoke-virtual {p0, v1, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

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

.method public findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public findFirstVisibleItemPosition()I
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
    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

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

.method public findLastCompletelyVisibleItemPosition()I
    .registers 5

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
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

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
    move-result v2

    .line 20
    :goto_13
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .registers 5

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
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

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
    move-result v2

    .line 20
    :goto_13
    return v2
.end method

.method public findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 4
    if-le p2, p1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    if-ge p2, p1, :cond_b

    .line 10
    const/4 v0, -0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-nez v0, :cond_13

    .line 15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 22
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 35
    move-result v1

    .line 36
    if-ge v0, v1, :cond_2a

    .line 38
    const/16 v0, 0x4104

    .line 40
    const/16 v1, 0x4004

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    const/16 v0, 0x1041

    .line 45
    const/16 v1, 0x1001

    .line 47
    :goto_2e
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 49
    if-nez v2, :cond_39

    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 53
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/y;->a(IIII)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 60
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/y;->a(IIII)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    :goto_3f
    return-object p1
.end method

.method public findOneVisibleChild(IIZZ)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 4
    const/16 v0, 0x140

    .line 6
    if-eqz p3, :cond_a

    .line 8
    const/16 p3, 0x6003

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move p3, v0

    .line 12
    :goto_b
    if-eqz p4, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 18
    if-nez p4, :cond_1a

    .line 20
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 22
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/y;->a(IIII)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/y;

    .line 29
    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/recyclerview/widget/y;->a(IIII)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    :goto_20
    return-object p1
.end method

.method public findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ZZ)Landroid/view/View;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz p4, :cond_15

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v1, v4

    .line 20
    move v5, v2

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    move v2, v1

    .line 23
    move v1, v3

    .line 24
    move v5, v4

    .line 25
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 28
    move-result v6

    .line 29
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 31
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->k()I

    .line 34
    move-result v7

    .line 35
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 37
    invoke-virtual {v8}, Landroidx/recyclerview/widget/p;->g()I

    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v10, v9

    .line 43
    move-object v11, v10

    .line 44
    :goto_2b
    if-eq v1, v2, :cond_7a

    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v12

    .line 50
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 53
    move-result v13

    .line 54
    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 56
    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 59
    move-result v14

    .line 60
    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 62
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 65
    move-result v15

    .line 66
    if-ltz v13, :cond_78

    .line 68
    if-ge v13, v6, :cond_78

    .line 70
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object v13

    .line 74
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 76
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 79
    move-result v13

    .line 80
    if-eqz v13, :cond_55

    .line 82
    if-nez v11, :cond_78

    .line 84
    move-object v11, v12

    .line 85
    goto :goto_78

    .line 86
    :cond_55
    if-gt v15, v7, :cond_5b

    .line 88
    if-ge v14, v7, :cond_5b

    .line 90
    move v13, v4

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v13, v3

    .line 93
    :goto_5c
    if-lt v14, v8, :cond_62

    .line 95
    if-le v15, v8, :cond_62

    .line 97
    move v14, v4

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v14, v3

    .line 100
    :goto_63
    if-nez v13, :cond_69

    .line 102
    if-eqz v14, :cond_68

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    return-object v12

    .line 106
    :cond_69
    :goto_69
    if-eqz p3, :cond_71

    .line 108
    if-eqz v14, :cond_6e

    .line 110
    goto :goto_73

    .line 111
    :cond_6e
    if-nez v9, :cond_78

    .line 113
    goto :goto_77

    .line 114
    :cond_71
    if-eqz v13, :cond_75

    .line 116
    :goto_73
    move-object v10, v12

    .line 117
    goto :goto_78

    .line 118
    :cond_75
    if-nez v9, :cond_78

    .line 120
    :goto_77
    move-object v9, v12

    .line 121
    :cond_78
    :goto_78
    add-int/2addr v1, v5

    .line 122
    goto :goto_2b

    .line 123
    :cond_7a
    if-eqz v9, :cond_7d

    .line 125
    goto :goto_82

    .line 126
    :cond_7d
    if-eqz v10, :cond_81

    .line 128
    move-object v9, v10

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move-object v9, v11

    .line 131
    :goto_82
    return-object v9
.end method

.method public findViewByPosition(I)Landroid/view/View;
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
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    move-result v1

    .line 18
    sub-int v1, p1, v1

    .line 20
    if-ltz v1, :cond_22

    .line 22
    if-ge v1, v0, :cond_22

    .line 24
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 31
    move-result v1

    .line 32
    if-ne v1, p1, :cond_22

    .line 34
    return-object v0

    .line 35
    :cond_22
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p1, v0, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p1, v1

    .line 10
    :goto_9
    if-eqz p1, :cond_12

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    return v1
.end method

.method public getInitialPrefetchItemCount()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 3
    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 3
    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 3
    return v0
.end method

.method public getStackFromEnd()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 3
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRTL()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 3
    return v0
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .registers 12

    .line 1
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-nez p1, :cond_a

    .line 8
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 15
    move-object v6, v0

    .line 16
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 18
    iget-object v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_2a

    .line 24
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 26
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 28
    if-ne v3, v1, :cond_1f

    .line 30
    move v3, p2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v3, v2

    .line 33
    :goto_20
    if-ne v0, v3, :cond_26

    .line 35
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 38
    goto :goto_3c

    .line 39
    :cond_26
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 42
    goto :goto_3c

    .line 43
    :cond_2a
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 45
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 47
    if-ne v3, v1, :cond_32

    .line 49
    move v3, p2

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v3, v2

    .line 52
    :goto_33
    if-ne v0, v3, :cond_39

    .line 54
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 61
    :goto_3c
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 66
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 69
    move-result v0

    .line 70
    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 72
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 74
    if-ne v0, p2, :cond_85

    .line 76
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_63

    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 89
    move-result v2

    .line 90
    sub-int/2addr v0, v2

    .line 91
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 93
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 96
    move-result v2

    .line 97
    sub-int v2, v0, v2

    .line 99
    goto :goto_6e

    .line 100
    :cond_63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 103
    move-result v2

    .line 104
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 106
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 109
    move-result v0

    .line 110
    add-int/2addr v0, v2

    .line 111
    :goto_6e
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 113
    if-ne v3, v1, :cond_7c

    .line 115
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 117
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 119
    sub-int v1, p3, v1

    .line 121
    move v5, p3

    .line 122
    move v4, v0

    .line 123
    move v3, v1

    .line 124
    goto :goto_a8

    .line 125
    :cond_7c
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 127
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 129
    add-int/2addr v1, p3

    .line 130
    move v3, p3

    .line 131
    move v4, v0

    .line 132
    move v5, v1

    .line 133
    goto :goto_a8

    .line 134
    :cond_85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 137
    move-result v0

    .line 138
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 140
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;)I

    .line 143
    move-result v2

    .line 144
    add-int/2addr v2, v0

    .line 145
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 147
    if-ne v3, v1, :cond_9f

    .line 149
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 151
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 153
    sub-int v1, p3, v1

    .line 155
    move v4, p3

    .line 156
    move v3, v0

    .line 157
    move v5, v2

    .line 158
    move v2, v1

    .line 159
    goto :goto_a8

    .line 160
    :cond_9f
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 162
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 164
    add-int/2addr v1, p3

    .line 165
    move v3, v0

    .line 166
    move v4, v1

    .line 167
    move v5, v2

    .line 168
    move v2, p3

    .line 169
    :goto_a8
    move-object v0, p0

    .line 170
    move-object v1, p1

    .line 171
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 174
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 177
    move-result p3

    .line 178
    if-nez p3, :cond_b9

    .line 180
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 183
    move-result p3

    .line 184
    if-eqz p3, :cond_bb

    .line 186
    :cond_b9
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 188
    :cond_bb
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 191
    move-result p1

    .line 192
    iput-boolean p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    .line 194
    return-void
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .registers 5

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

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

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 15
    move-result p1

    .line 16
    const/high16 p2, -0x80000000

    .line 18
    if-ne p1, p2, :cond_14

    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 24
    const v1, 0x3eaaaaab

    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 29
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->l()I

    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    mul-float/2addr v2, v1

    .line 35
    float-to-int v1, v2

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 42
    iput p2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 44
    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 50
    const/4 p2, -0x1

    .line 51
    if-ne p1, p2, :cond_39

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;

    .line 56
    move-result-object p3

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;

    .line 61
    move-result-object p3

    .line 62
    :goto_3d
    if-ne p1, p2, :cond_44

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    goto :goto_48

    .line 69
    :cond_44
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    :goto_48
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_52

    .line 79
    if-nez p3, :cond_51

    .line 81
    return-object v0

    .line 82
    :cond_51
    return-object p1

    .line 83
    :cond_52
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_17

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 24
    :cond_17
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_9

    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 8
    if-eq v0, v1, :cond_13

    .line 10
    :cond_9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_13

    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_24

    .line 26
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 28
    if-ltz v0, :cond_1f

    .line 30
    move v4, v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v4, v3

    .line 33
    :goto_20
    if-eqz v4, :cond_24

    .line 35
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 37
    :cond_24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 42
    iput-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 53
    iget-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 55
    if-eqz v5, :cond_69

    .line 57
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 59
    if-ne v5, v1, :cond_69

    .line 61
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 63
    if-eqz v5, :cond_41

    .line 65
    goto :goto_69

    .line 66
    :cond_41
    if-eqz v0, :cond_7c

    .line 68
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 70
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 73
    move-result v4

    .line 74
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 76
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->g()I

    .line 79
    move-result v5

    .line 80
    if-ge v4, v5, :cond_5f

    .line 82
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 84
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 87
    move-result v4

    .line 88
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 90
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->k()I

    .line 93
    move-result v5

    .line 94
    if-gt v4, v5, :cond_7c

    .line 96
    :cond_5f
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 98
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 101
    move-result v5

    .line 102
    invoke-virtual {v4, v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c(ILandroid/view/View;)V

    .line 105
    goto :goto_7c

    .line 106
    :cond_69
    :goto_69
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d()V

    .line 109
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 111
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 113
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    xor-int/2addr v4, v5

    .line 116
    iput-boolean v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 118
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 121
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 123
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 125
    :cond_7c
    :goto_7c
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 127
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->j:I

    .line 129
    if-ltz v4, :cond_84

    .line 131
    move v4, v2

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v4, v1

    .line 134
    :goto_85
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    .line 136
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 138
    aput v3, v0, v3

    .line 140
    aput v3, v0, v2

    .line 142
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V

    .line 145
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 147
    aget v0, v0, v3

    .line 149
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 152
    move-result v0

    .line 153
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 155
    invoke-virtual {v4}, Landroidx/recyclerview/widget/p;->k()I

    .line 158
    move-result v4

    .line 159
    add-int/2addr v4, v0

    .line 160
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 162
    aget v0, v0, v2

    .line 164
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 167
    move-result v0

    .line 168
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 170
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->h()I

    .line 173
    move-result v5

    .line 174
    add-int/2addr v5, v0

    .line 175
    iget-boolean v0, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 177
    if-eqz v0, :cond_eb

    .line 179
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 181
    if-eq v0, v1, :cond_eb

    .line 183
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 185
    const/high16 v7, -0x80000000

    .line 187
    if-eq v6, v7, :cond_eb

    .line 189
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_eb

    .line 195
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 197
    if-eqz v6, :cond_d6

    .line 199
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 201
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->g()I

    .line 204
    move-result v6

    .line 205
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 207
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 210
    move-result v0

    .line 211
    sub-int/2addr v6, v0

    .line 212
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 214
    goto :goto_e5

    .line 215
    :cond_d6
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 217
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 220
    move-result v0

    .line 221
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 223
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->k()I

    .line 226
    move-result v6

    .line 227
    sub-int/2addr v0, v6

    .line 228
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 230
    :goto_e5
    sub-int/2addr v6, v0

    .line 231
    if-lez v6, :cond_ea

    .line 233
    add-int/2addr v4, v6

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    sub-int/2addr v5, v6

    .line 236
    :cond_eb
    :goto_eb
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 238
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 240
    if-eqz v6, :cond_f6

    .line 242
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 244
    if-eqz v6, :cond_fc

    .line 246
    goto :goto_fb

    .line 247
    :cond_f6
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 249
    if-eqz v6, :cond_fb

    .line 251
    goto :goto_fc

    .line 252
    :cond_fb
    :goto_fb
    move v1, v2

    .line 253
    :cond_fc
    :goto_fc
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 256
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 259
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 261
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    .line 264
    move-result v1

    .line 265
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Z

    .line 267
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 274
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 276
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 278
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 280
    if-eqz v1, :cond_158

    .line 282
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 285
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 287
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 289
    invoke-virtual {p0, p1, v0, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 292
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 294
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 296
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 298
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 300
    if-lez v0, :cond_12e

    .line 302
    add-int/2addr v5, v0

    .line 303
    :cond_12e
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 305
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 308
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 310
    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 312
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 314
    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 316
    add-int/2addr v5, v6

    .line 317
    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 319
    invoke-virtual {p0, p1, v0, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 322
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 324
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 326
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 328
    if-lez v0, :cond_19a

    .line 330
    invoke-direct {p0, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 333
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 335
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 337
    invoke-virtual {p0, p1, v1, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 340
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 342
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 344
    goto :goto_19a

    .line 345
    :cond_158
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 348
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 350
    iput v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 352
    invoke-virtual {p0, p1, v0, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 355
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 357
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 359
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 361
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 363
    if-lez v0, :cond_16d

    .line 365
    add-int/2addr v4, v0

    .line 366
    :cond_16d
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 368
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V

    .line 371
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 373
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 375
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 377
    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 379
    add-int/2addr v4, v6

    .line 380
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 382
    invoke-virtual {p0, p1, v0, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 385
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 387
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 389
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    .line 391
    if-lez v0, :cond_198

    .line 393
    invoke-direct {p0, v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 396
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 398
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 400
    invoke-virtual {p0, p1, v1, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 403
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 405
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 407
    move v5, v0

    .line 408
    goto :goto_199

    .line 409
    :cond_198
    move v5, v1

    .line 410
    :goto_199
    move v1, v4

    .line 411
    :cond_19a
    :goto_19a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 414
    move-result v0

    .line 415
    if-lez v0, :cond_1be

    .line 417
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 419
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 421
    xor-int/2addr v0, v4

    .line 422
    if-eqz v0, :cond_1b2

    .line 424
    invoke-direct {p0, v5, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 427
    move-result v0

    .line 428
    add-int/2addr v1, v0

    .line 429
    add-int/2addr v5, v0

    .line 430
    invoke-direct {p0, v1, p1, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 433
    move-result v0

    .line 434
    goto :goto_1bc

    .line 435
    :cond_1b2
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 438
    move-result v0

    .line 439
    add-int/2addr v1, v0

    .line 440
    add-int/2addr v5, v0

    .line 441
    invoke-direct {p0, v5, p1, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 444
    move-result v0

    .line 445
    :goto_1bc
    add-int/2addr v1, v0

    .line 446
    add-int/2addr v5, v0

    .line 447
    :cond_1be
    invoke-direct {p0, p1, p2, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    .line 450
    iget-boolean p1, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 452
    if-nez p1, :cond_1ce

    .line 454
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 456
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    .line 459
    move-result p2

    .line 460
    iput p2, p1, Landroidx/recyclerview/widget/p;->b:I

    .line 462
    goto :goto_1d3

    .line 463
    :cond_1ce
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 465
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d()V

    .line 468
    :goto_1d3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 470
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 472
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 10
    const/high16 p1, -0x80000000

    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d()V

    .line 19
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_f

    .line 14
    iput v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 19
    :cond_12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;)V

    .line 10
    return-object v1

    .line 11
    :cond_a
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_55

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 25
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 27
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 29
    xor-int/2addr v1, v2

    .line 30
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->c:Z

    .line 32
    if-eqz v1, :cond_3b

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->g()I

    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 46
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    .line 53
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 56
    move-result v1

    .line 57
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 59
    goto :goto_58

    .line 60
    :cond_3b
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 67
    move-result v2

    .line 68
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 70
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 72
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 78
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->k()I

    .line 81
    move-result v2

    .line 82
    sub-int/2addr v1, v2

    .line 83
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    .line 85
    goto :goto_58

    .line 86
    :cond_55
    const/4 v1, -0x1

    .line 87
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 89
    :goto_58
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .registers 8

    .line 1
    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 15
    move-result p3

    .line 16
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    move-result p4

    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ge p3, p4, :cond_19

    .line 24
    move p3, v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move p3, v1

    .line 27
    :goto_1a
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 29
    if-eqz v2, :cond_49

    .line 31
    if-ne p3, v0, :cond_38

    .line 33
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 35
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->g()I

    .line 38
    move-result p3

    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 41
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 44
    move-result p2

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 47
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 50
    move-result p1

    .line 51
    add-int/2addr p1, p2

    .line 52
    sub-int/2addr p3, p1

    .line 53
    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 56
    goto :goto_65

    .line 57
    :cond_38
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->g()I

    .line 62
    move-result p1

    .line 63
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 65
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 68
    move-result p2

    .line 69
    sub-int/2addr p1, p2

    .line 70
    invoke-virtual {p0, p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 73
    goto :goto_65

    .line 74
    :cond_49
    if-ne p3, v1, :cond_55

    .line 76
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 78
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 85
    goto :goto_65

    .line 86
    :cond_55
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 88
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 91
    move-result p2

    .line 92
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 94
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 97
    move-result p1

    .line 98
    sub-int/2addr p2, p1

    .line 99
    invoke-virtual {p0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 102
    :goto_65
    return-void
.end method

.method public resolveIsInfinite()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->i()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_12

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->f()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_39

    .line 8
    if-nez p1, :cond_a

    .line 10
    goto :goto_39

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 19
    if-lez p1, :cond_16

    .line 21
    move v0, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, -0x1

    .line 24
    :goto_17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 27
    move-result v3

    .line 28
    invoke-direct {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 33
    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    .line 35
    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$y;Z)I

    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, v4

    .line 40
    if-gez p2, :cond_2a

    .line 42
    return v1

    .line 43
    :cond_2a
    if-le v3, p2, :cond_2e

    .line 45
    mul-int p1, v0, p2

    .line 47
    :cond_2e
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 49
    neg-int p3, p1

    .line 50
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 53
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$c;

    .line 55
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->j:I

    .line 57
    return p1

    .line 58
    :cond_39
    :goto_39
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public scrollToPosition(I)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 3
    const/high16 p1, -0x80000000

    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 17
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 3
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 7
    if-eqz p1, :cond_b

    .line 9
    const/4 p2, -0x1

    .line 10
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setInitialPrefetchItemCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_12

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_6

    .line 6
    goto :goto_12

    .line 7
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string v1, "invalid orientation:"

    .line 11
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0

    .line 19
    :cond_12
    :goto_12
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 25
    if-ne p1, v0, :cond_1e

    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 29
    if-nez v0, :cond_2d

    .line 31
    :cond_1e
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/p;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    .line 39
    iput-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/p;

    .line 41
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 46
    :cond_2d
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 3
    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 7
    if-ne p1, v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 3
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 7
    if-ne v0, p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    return-void
.end method

.method public shouldMeasureTwice()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000  # 2.0f

    .line 7
    if-eq v0, v1, :cond_16

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 12
    move-result v0

    .line 13
    if-eq v0, v1, :cond_16

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFlexibleChildInBothOrientations()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
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

.method public supportsPredictiveItemAnimations()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 7
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 9
    if-ne v0, v1, :cond_c

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

.method public validateChildOrder()V
    .registers 11

    .line 1
    const-string v0, "validating child count "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LinearLayoutManager"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ge v0, v1, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 42
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 49
    move-result v3

    .line 50
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 52
    const-string v5, "detected invalid location"

    .line 54
    const-string v6, "detected invalid position. loc invalid? "

    .line 56
    if-eqz v4, :cond_76

    .line 58
    move v4, v1

    .line 59
    :goto_3a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 62
    move-result v7

    .line 63
    if-ge v4, v7, :cond_b3

    .line 65
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 72
    move-result v8

    .line 73
    iget-object v9, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 75
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 78
    move-result v7

    .line 79
    if-ge v8, v2, :cond_68

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 84
    new-instance v2, Ljava/lang/RuntimeException;

    .line 86
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v4

    .line 90
    if-ge v7, v3, :cond_5c

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v1, v0

    .line 94
    :goto_5d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    throw v2

    .line 105
    :cond_68
    if-gt v7, v3, :cond_6d

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    goto :goto_3a

    .line 110
    :cond_6d
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    .line 115
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v0

    .line 119
    :cond_76
    move v4, v1

    .line 120
    :goto_77
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 123
    move-result v7

    .line 124
    if-ge v4, v7, :cond_b3

    .line 126
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 133
    move-result v8

    .line 134
    iget-object v9, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/p;

    .line 136
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 139
    move-result v7

    .line 140
    if-ge v8, v2, :cond_a5

    .line 142
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 145
    new-instance v2, Ljava/lang/RuntimeException;

    .line 147
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move-result-object v4

    .line 151
    if-ge v7, v3, :cond_99

    .line 153
    goto :goto_9a

    .line 154
    :cond_99
    move v1, v0

    .line 155
    :goto_9a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v2

    .line 166
    :cond_a5
    if-lt v7, v3, :cond_aa

    .line 168
    add-int/lit8 v4, v4, 0x1

    .line 170
    goto :goto_77

    .line 171
    :cond_aa
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    .line 176
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 179
    throw v0

    .line 180
    :cond_b3
    return-void
.end method
