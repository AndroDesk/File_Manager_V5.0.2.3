.class public Landroidx/recyclerview/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/f$g;,
        Landroidx/recyclerview/widget/f$f;,
        Landroidx/recyclerview/widget/f$e;,
        Landroidx/recyclerview/widget/f$h;
    }
.end annotation


# static fields
.field public static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field public static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field public static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field private mActionState:I

.field public mActivePointerId:I

.field public mCallback:Landroidx/recyclerview/widget/f$e;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field public mDx:F

.field public mDy:F

.field public mGestureDetector:Lm0/f;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/f$f;

.field private mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

.field public mOverdrawChild:Landroid/view/View;

.field public mOverdrawChildPosition:I

.field public final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/f$g;",
            ">;"
        }
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mScrollRunnable:Ljava/lang/Runnable;

.field public mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public mSelectedFlags:I

.field private mSelectedStartX:F

.field private mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/f$e;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mPendingCleanup:Ljava/util/List;

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 22
    const/4 v2, 0x0

    .line 23
    iput v2, p0, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v2, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 32
    new-instance v2, Landroidx/recyclerview/widget/f$a;

    .line 34
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/f$a;-><init>(Landroidx/recyclerview/widget/f;)V

    .line 37
    iput-object v2, p0, Landroidx/recyclerview/widget/f;->mScrollRunnable:Ljava/lang/Runnable;

    .line 39
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 41
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 43
    iput v1, p0, Landroidx/recyclerview/widget/f;->mOverdrawChildPosition:I

    .line 45
    new-instance v0, Landroidx/recyclerview/widget/f$b;

    .line 47
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/f$b;-><init>(Landroidx/recyclerview/widget/f;)V

    .line 50
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 52
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 54
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .registers 1

    return-void
.end method

.method private checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;I)I
    .registers 11

    .line 1
    and-int/lit8 v0, p2, 0xc

    .line 3
    if-eqz v0, :cond_78

    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    const/16 v2, 0x8

    .line 12
    const/4 v3, 0x4

    .line 13
    if-lez v0, :cond_10

    .line 15
    move v0, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, v3

    .line 18
    :goto_11
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    if-eqz v4, :cond_5c

    .line 22
    iget v5, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 24
    const/4 v6, -0x1

    .line 25
    if-le v5, v6, :cond_5c

    .line 27
    const/16 v5, 0x3e8

    .line 29
    iget-object v6, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 31
    iget v7, p0, Landroidx/recyclerview/widget/f;->mMaxSwipeVelocity:F

    .line 33
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/f$e;->getSwipeVelocityThreshold(F)F

    .line 36
    move-result v6

    .line 37
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 40
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 42
    iget v5, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 44
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 47
    move-result v4

    .line 48
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 50
    iget v6, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 52
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 55
    move-result v5

    .line 56
    cmpl-float v1, v4, v1

    .line 58
    if-lez v1, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v2, v3

    .line 62
    :goto_3d
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 65
    move-result v1

    .line 66
    and-int v3, v2, p2

    .line 68
    if-eqz v3, :cond_5c

    .line 70
    if-ne v0, v2, :cond_5c

    .line 72
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 74
    iget v4, p0, Landroidx/recyclerview/widget/f;->mSwipeEscapeVelocity:F

    .line 76
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/f$e;->getSwipeEscapeVelocity(F)F

    .line 79
    move-result v3

    .line 80
    cmpl-float v3, v1, v3

    .line 82
    if-ltz v3, :cond_5c

    .line 84
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 87
    move-result v3

    .line 88
    cmpl-float v1, v1, v3

    .line 90
    if-lez v1, :cond_5c

    .line 92
    return v2

    .line 93
    :cond_5c
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 98
    move-result v1

    .line 99
    int-to-float v1, v1

    .line 100
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 102
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/f$e;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$b0;)F

    .line 105
    move-result p1

    .line 106
    mul-float/2addr p1, v1

    .line 107
    and-int/2addr p2, v0

    .line 108
    if-eqz p2, :cond_78

    .line 110
    iget p2, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 112
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 115
    move-result p2

    .line 116
    cmpl-float p1, p2, p1

    .line 118
    if-lez p1, :cond_78

    .line 120
    return v0

    .line 121
    :cond_78
    const/4 p1, 0x0

    .line 122
    return p1
.end method

.method private checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;I)I
    .registers 11

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 3
    if-eqz v0, :cond_77

    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-lez v0, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v3

    .line 17
    :goto_10
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 19
    if-eqz v4, :cond_5b

    .line 21
    iget v5, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 23
    const/4 v6, -0x1

    .line 24
    if-le v5, v6, :cond_5b

    .line 26
    const/16 v5, 0x3e8

    .line 28
    iget-object v6, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 30
    iget v7, p0, Landroidx/recyclerview/widget/f;->mMaxSwipeVelocity:F

    .line 32
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/f$e;->getSwipeVelocityThreshold(F)F

    .line 35
    move-result v6

    .line 36
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 39
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 41
    iget v5, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 43
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 46
    move-result v4

    .line 47
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 49
    iget v6, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 51
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 54
    move-result v5

    .line 55
    cmpl-float v1, v5, v1

    .line 57
    if-lez v1, :cond_3b

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v2, v3

    .line 61
    :goto_3c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 64
    move-result v1

    .line 65
    and-int v3, v2, p2

    .line 67
    if-eqz v3, :cond_5b

    .line 69
    if-ne v2, v0, :cond_5b

    .line 71
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 73
    iget v5, p0, Landroidx/recyclerview/widget/f;->mSwipeEscapeVelocity:F

    .line 75
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/f$e;->getSwipeEscapeVelocity(F)F

    .line 78
    move-result v3

    .line 79
    cmpl-float v3, v1, v3

    .line 81
    if-ltz v3, :cond_5b

    .line 83
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 86
    move-result v3

    .line 87
    cmpl-float v1, v1, v3

    .line 89
    if-lez v1, :cond_5b

    .line 91
    return v2

    .line 92
    :cond_5b
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 101
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/f$e;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$b0;)F

    .line 104
    move-result p1

    .line 105
    mul-float/2addr p1, v1

    .line 106
    and-int/2addr p2, v0

    .line 107
    if-eqz p2, :cond_77

    .line 109
    iget p2, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 111
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 114
    move-result p2

    .line 115
    cmpl-float p1, p2, p1

    .line 117
    if-lez p1, :cond_77

    .line 119
    return v0

    .line 120
    :cond_77
    const/4 p1, 0x0

    .line 121
    return p1
.end method

.method private destroyCallbacks()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x1

    .line 25
    add-int/2addr v0, v1

    .line 26
    :goto_19
    if-ltz v0, :cond_35

    .line 28
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/recyclerview/widget/f$g;

    .line 37
    iget-object v3, v2, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 39
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 42
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 44
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    iget-object v2, v2, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 48
    invoke-virtual {v3, v4, v2}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 53
    goto :goto_19

    .line 54
    :cond_35
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 62
    iput v1, p0, Landroidx/recyclerview/widget/f;->mOverdrawChildPosition:I

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->releaseVelocityTracker()V

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->stopGestureDetection()V

    .line 70
    return-void
.end method

.method private findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$b0;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ")",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/f;->mSwapTargets:Ljava/util/List;

    .line 7
    if-nez v2, :cond_17

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v2, v0, Landroidx/recyclerview/widget/f;->mSwapTargets:Ljava/util/List;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v2, v0, Landroidx/recyclerview/widget/f;->mDistances:Ljava/util/List;

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 27
    iget-object v2, v0, Landroidx/recyclerview/widget/f;->mDistances:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 32
    :goto_1f
    iget-object v2, v0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 34
    invoke-virtual {v2}, Landroidx/recyclerview/widget/f$e;->getBoundingBoxMargin()I

    .line 37
    move-result v2

    .line 38
    iget v3, v0, Landroidx/recyclerview/widget/f;->mSelectedStartX:F

    .line 40
    iget v4, v0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 42
    add-float/2addr v3, v4

    .line 43
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 46
    move-result v3

    .line 47
    sub-int/2addr v3, v2

    .line 48
    iget v4, v0, Landroidx/recyclerview/widget/f;->mSelectedStartY:F

    .line 50
    iget v5, v0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 52
    add-float/2addr v4, v5

    .line 53
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 56
    move-result v4

    .line 57
    sub-int/2addr v4, v2

    .line 58
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v5

    .line 64
    add-int/2addr v5, v3

    .line 65
    mul-int/lit8 v2, v2, 0x2

    .line 67
    add-int/2addr v5, v2

    .line 68
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 73
    move-result v6

    .line 74
    add-int/2addr v6, v4

    .line 75
    add-int/2addr v6, v2

    .line 76
    add-int v2, v3, v5

    .line 78
    div-int/lit8 v2, v2, 0x2

    .line 80
    add-int v7, v4, v6

    .line 82
    div-int/lit8 v7, v7, 0x2

    .line 84
    iget-object v8, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 93
    move-result v9

    .line 94
    const/4 v11, 0x0

    .line 95
    :goto_5e
    if-ge v11, v9, :cond_ed

    .line 97
    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 100
    move-result-object v12

    .line 101
    iget-object v13, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 103
    if-ne v12, v13, :cond_6a

    .line 105
    goto/16 :goto_e7

    .line 107
    :cond_6a
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 110
    move-result v13

    .line 111
    if-lt v13, v4, :cond_e7

    .line 113
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 116
    move-result v13

    .line 117
    if-gt v13, v6, :cond_e7

    .line 119
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 122
    move-result v13

    .line 123
    if-lt v13, v3, :cond_e7

    .line 125
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 128
    move-result v13

    .line 129
    if-le v13, v5, :cond_83

    .line 131
    goto :goto_e7

    .line 132
    :cond_83
    iget-object v13, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 137
    move-result-object v13

    .line 138
    iget-object v14, v0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 140
    iget-object v15, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    iget-object v10, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 144
    invoke-virtual {v14, v15, v10, v13}, Landroidx/recyclerview/widget/f$e;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_e7

    .line 150
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 153
    move-result v10

    .line 154
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 157
    move-result v14

    .line 158
    add-int/2addr v14, v10

    .line 159
    div-int/lit8 v14, v14, 0x2

    .line 161
    sub-int v10, v2, v14

    .line 163
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 166
    move-result v10

    .line 167
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 170
    move-result v14

    .line 171
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 174
    move-result v12

    .line 175
    add-int/2addr v12, v14

    .line 176
    div-int/lit8 v12, v12, 0x2

    .line 178
    sub-int v12, v7, v12

    .line 180
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 183
    move-result v12

    .line 184
    mul-int/2addr v10, v10

    .line 185
    mul-int/2addr v12, v12

    .line 186
    add-int/2addr v12, v10

    .line 187
    iget-object v10, v0, Landroidx/recyclerview/widget/f;->mSwapTargets:Ljava/util/List;

    .line 189
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 192
    move-result v10

    .line 193
    const/4 v14, 0x0

    .line 194
    const/4 v15, 0x0

    .line 195
    :goto_c2
    if-ge v14, v10, :cond_d9

    .line 197
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mDistances:Ljava/util/List;

    .line 199
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Ljava/lang/Integer;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 208
    move-result v1

    .line 209
    if-le v12, v1, :cond_d9

    .line 211
    add-int/lit8 v15, v15, 0x1

    .line 213
    add-int/lit8 v14, v14, 0x1

    .line 215
    move-object/from16 v1, p1

    .line 217
    goto :goto_c2

    .line 218
    :cond_d9
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSwapTargets:Ljava/util/List;

    .line 220
    invoke-interface {v1, v15, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 223
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mDistances:Ljava/util/List;

    .line 225
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v10

    .line 229
    invoke-interface {v1, v15, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    :cond_e7
    :goto_e7
    add-int/lit8 v11, v11, 0x1

    .line 234
    move-object/from16 v1, p1

    .line 236
    goto/16 :goto_5e

    .line 238
    :cond_ed
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSwapTargets:Ljava/util/List;

    .line 240
    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v1, v3, :cond_d

    .line 13
    return-object v2

    .line 14
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 21
    move-result v3

    .line 22
    iget v4, p0, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 24
    sub-float/2addr v3, v4

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 28
    move-result v1

    .line 29
    iget v4, p0, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 31
    sub-float/2addr v1, v4

    .line 32
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result v3

    .line 36
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 39
    move-result v1

    .line 40
    iget v4, p0, Landroidx/recyclerview/widget/f;->mSlop:I

    .line 42
    int-to-float v5, v4

    .line 43
    cmpg-float v5, v3, v5

    .line 45
    if-gez v5, :cond_34

    .line 47
    int-to-float v4, v4

    .line 48
    cmpg-float v4, v1, v4

    .line 50
    if-gez v4, :cond_34

    .line 52
    return-object v2

    .line 53
    :cond_34
    cmpl-float v4, v3, v1

    .line 55
    if-lez v4, :cond_3f

    .line 57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3f

    .line 63
    return-object v2

    .line 64
    :cond_3f
    cmpl-float v1, v1, v3

    .line 66
    if-lez v1, :cond_4a

    .line 68
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4a

    .line 74
    return-object v2

    .line 75
    :cond_4a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_51

    .line 81
    return-object v2

    .line 82
    :cond_51
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method private getSelectedDxDy([F)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_19

    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/f;->mSelectedStartX:F

    .line 10
    iget v2, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 12
    add-float/2addr v0, v2

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v0, v2

    .line 23
    aput v0, p1, v1

    .line 25
    goto :goto_23

    .line 26
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 33
    move-result v0

    .line 34
    aput v0, p1, v1

    .line 36
    :goto_23
    iget v0, p0, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    .line 38
    and-int/lit8 v0, v0, 0x3

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_3c

    .line 43
    iget v0, p0, Landroidx/recyclerview/widget/f;->mSelectedStartY:F

    .line 45
    iget v2, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 47
    add-float/2addr v0, v2

    .line 48
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 50
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v0, v2

    .line 58
    aput v0, p1, v1

    .line 60
    goto :goto_46

    .line 61
    :cond_3c
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 63
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 68
    move-result v0

    .line 69
    aput v0, p1, v1

    .line 71
    :goto_46
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .registers 6

    .line 1
    cmpl-float v0, p1, p3

    .line 3
    if-ltz v0, :cond_1e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 13
    if-gtz p1, :cond_1e

    .line 15
    cmpl-float p1, p2, p4

    .line 17
    if-ltz p1, :cond_1e

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 27
    if-gtz p0, :cond_1e

    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    :goto_1f
    return p0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method

.method private setupCallbacks()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/f;->mSlop:I

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->startGestureDetection()V

    .line 37
    return-void
.end method

.method private startGestureDetection()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/f$f;

    .line 3
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/f$f;-><init>(Landroidx/recyclerview/widget/f;)V

    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/f$f;

    .line 8
    new-instance v0, Lm0/f;

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/f$f;

    .line 18
    invoke-direct {v0, v1, v2}, Lm0/f;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/f$f;)V

    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    .line 23
    return-void
.end method

.method private stopGestureDetection()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/f$f;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Landroidx/recyclerview/widget/f$f;->a:Z

    .line 9
    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/f$f;

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    .line 13
    if-eqz v0, :cond_10

    .line 15
    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mGestureDetector:Lm0/f;

    .line 17
    :cond_10
    return-void
.end method

.method private swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 7

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/f$e;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 18
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 22
    invoke-static {v3}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/f$e;->convertToAbsoluteDirection(II)I

    .line 29
    move-result v2

    .line 30
    const v3, 0xff00

    .line 33
    and-int/2addr v2, v3

    .line 34
    shr-int/lit8 v2, v2, 0x8

    .line 36
    if-nez v2, :cond_26

    .line 38
    return v1

    .line 39
    :cond_26
    and-int/2addr v0, v3

    .line 40
    shr-int/lit8 v0, v0, 0x8

    .line 42
    iget v3, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 44
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 47
    move-result v3

    .line 48
    iget v4, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 50
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 53
    move-result v4

    .line 54
    cmpl-float v3, v3, v4

    .line 56
    if-lez v3, :cond_56

    .line 58
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/f;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 61
    move-result v3

    .line 62
    if-lez v3, :cond_4f

    .line 64
    and-int p1, v0, v3

    .line 66
    if-nez p1, :cond_4e

    .line 68
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-static {p1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 73
    move-result p1

    .line 74
    invoke-static {v3, p1}, Landroidx/recyclerview/widget/f$e;->convertToRelativeDirection(II)I

    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_4e
    return v3

    .line 80
    :cond_4f
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/f;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 83
    move-result p1

    .line 84
    if-lez p1, :cond_71

    .line 86
    return p1

    .line 87
    :cond_56
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/f;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 90
    move-result v3

    .line 91
    if-lez v3, :cond_5d

    .line 93
    return v3

    .line 94
    :cond_5d
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/f;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 97
    move-result p1

    .line 98
    if-lez p1, :cond_71

    .line 100
    and-int/2addr v0, p1

    .line 101
    if-nez v0, :cond_70

    .line 103
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 108
    move-result v0

    .line 109
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/f$e;->convertToRelativeDirection(II)I

    .line 112
    move-result p1

    .line 113
    :cond_70
    return p1

    .line 114
    :cond_71
    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz v0, :cond_a

    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->destroyCallbacks()V

    .line 11
    :cond_a
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    if-eqz p1, :cond_25

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 19
    sget v0, Lb1/b;->item_touch_helper_swipe_escape_velocity:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/f;->mSwipeEscapeVelocity:F

    .line 27
    sget v0, Lb1/b;->item_touch_helper_swipe_escape_max_velocity:I

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    move-result p1

    .line 33
    iput p1, p0, Landroidx/recyclerview/widget/f;->mMaxSwipeVelocity:F

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->setupCallbacks()V

    .line 38
    :cond_25
    return-void
.end method

.method public checkSelectForSwipe(ILandroid/view/MotionEvent;I)V
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    if-nez v0, :cond_91

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_91

    .line 8
    iget p1, p0, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 10
    if-eq p1, v0, :cond_91

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/f$e;->isItemViewSwipeEnabled()Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_15

    .line 20
    goto/16 :goto_91

    .line 22
    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne p1, v1, :cond_1f

    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/f;->findSwipedView(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_26

    .line 38
    return-void

    .line 39
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    invoke-virtual {v2, v3, p1}, Landroidx/recyclerview/widget/f$e;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 46
    move-result v2

    .line 47
    const v3, 0xff00

    .line 50
    and-int/2addr v2, v3

    .line 51
    shr-int/lit8 v2, v2, 0x8

    .line 53
    if-nez v2, :cond_37

    .line 55
    return-void

    .line 56
    :cond_37
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 59
    move-result v3

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 63
    move-result p3

    .line 64
    iget v4, p0, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 66
    sub-float/2addr v3, v4

    .line 67
    iget v4, p0, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 69
    sub-float/2addr p3, v4

    .line 70
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 73
    move-result v4

    .line 74
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 77
    move-result v5

    .line 78
    iget v6, p0, Landroidx/recyclerview/widget/f;->mSlop:I

    .line 80
    int-to-float v7, v6

    .line 81
    cmpg-float v7, v4, v7

    .line 83
    if-gez v7, :cond_5a

    .line 85
    int-to-float v6, v6

    .line 86
    cmpg-float v6, v5, v6

    .line 88
    if-gez v6, :cond_5a

    .line 90
    return-void

    .line 91
    :cond_5a
    cmpl-float v4, v4, v5

    .line 93
    const/4 v5, 0x0

    .line 94
    if-lez v4, :cond_71

    .line 96
    cmpg-float p3, v3, v5

    .line 98
    if-gez p3, :cond_68

    .line 100
    and-int/lit8 p3, v2, 0x4

    .line 102
    if-nez p3, :cond_68

    .line 104
    return-void

    .line 105
    :cond_68
    cmpl-float p3, v3, v5

    .line 107
    if-lez p3, :cond_83

    .line 109
    and-int/lit8 p3, v2, 0x8

    .line 111
    if-nez p3, :cond_83

    .line 113
    return-void

    .line 114
    :cond_71
    cmpg-float v3, p3, v5

    .line 116
    if-gez v3, :cond_7a

    .line 118
    and-int/lit8 v3, v2, 0x1

    .line 120
    if-nez v3, :cond_7a

    .line 122
    return-void

    .line 123
    :cond_7a
    cmpl-float p3, p3, v5

    .line 125
    if-lez p3, :cond_83

    .line 127
    and-int/lit8 p3, v2, 0x2

    .line 129
    if-nez p3, :cond_83

    .line 131
    return-void

    .line 132
    :cond_83
    iput v5, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 134
    iput v5, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 136
    const/4 p3, 0x0

    .line 137
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 140
    move-result p2

    .line 141
    iput p2, p0, Landroidx/recyclerview/widget/f;->mActivePointerId:I

    .line 143
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 146
    :cond_91
    :goto_91
    return-void
.end method

.method public endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 9
    if-ltz v0, :cond_29

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/f$g;

    .line 19
    iget-object v2, v1, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    if-ne v2, p1, :cond_6

    .line 23
    iget-boolean p1, v1, Landroidx/recyclerview/widget/f$g;->k:Z

    .line 25
    or-int/2addr p1, p2

    .line 26
    iput-boolean p1, v1, Landroidx/recyclerview/widget/f$g;->k:Z

    .line 28
    iget-boolean p1, v1, Landroidx/recyclerview/widget/f$g;->l:Z

    .line 30
    if-nez p1, :cond_24

    .line 32
    iget-object p1, v1, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37
    :cond_24
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    :cond_29
    return-void
.end method

.method public findAnimation(Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/f$g;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-object v1

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 23
    :goto_16
    if-ltz v0, :cond_2a

    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 27
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/recyclerview/widget/f$g;

    .line 33
    iget-object v3, v2, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 35
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 37
    if-ne v3, p1, :cond_27

    .line 39
    return-object v2

    .line 40
    :cond_27
    add-int/lit8 v0, v0, -0x1

    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    return-object v1
.end method

.method public findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 11
    if-eqz v1, :cond_1f

    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 15
    iget v2, p0, Landroidx/recyclerview/widget/f;->mSelectedStartX:F

    .line 17
    iget v3, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 19
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/f;->mSelectedStartY:F

    .line 22
    iget v4, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 24
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/f;->hitTest(Landroid/view/View;FFFF)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1f

    .line 31
    return-object v1

    .line 32
    :cond_1f
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 40
    :goto_27
    if-ltz v1, :cond_43

    .line 42
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroidx/recyclerview/widget/f$g;

    .line 50
    iget-object v3, v2, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 52
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 54
    iget v4, v2, Landroidx/recyclerview/widget/f$g;->i:F

    .line 56
    iget v2, v2, Landroidx/recyclerview/widget/f$g;->j:F

    .line 58
    invoke-static {v3, v0, p1, v4, v2}, Landroidx/recyclerview/widget/f;->hitTest(Landroid/view/View;FFFF)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_40

    .line 64
    return-object v3

    .line 65
    :cond_40
    add-int/lit8 v1, v1, -0x1

    .line 67
    goto :goto_27

    .line 68
    :cond_43
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    return-void
.end method

.method public hasRunningRecoverAnim()Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

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
    if-ge v2, v0, :cond_1b

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/recyclerview/widget/f$g;

    .line 19
    iget-boolean v3, v3, Landroidx/recyclerview/widget/f$g;->l:Z

    .line 21
    if-nez v3, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_8

    .line 28
    :cond_1b
    return v1
.end method

.method public moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 18
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f$e;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$b0;)F

    .line 21
    move-result v0

    .line 22
    iget v1, p0, Landroidx/recyclerview/widget/f;->mSelectedStartX:F

    .line 24
    iget v2, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 26
    add-float/2addr v1, v2

    .line 27
    float-to-int v8, v1

    .line 28
    iget v1, p0, Landroidx/recyclerview/widget/f;->mSelectedStartY:F

    .line 30
    iget v2, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 32
    add-float/2addr v1, v2

    .line 33
    float-to-int v9, v1

    .line 34
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 39
    move-result v1

    .line 40
    sub-int v1, v9, v1

    .line 42
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 45
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v2

    .line 53
    int-to-float v2, v2

    .line 54
    mul-float/2addr v2, v0

    .line 55
    cmpg-float v1, v1, v2

    .line 57
    if-gez v1, :cond_54

    .line 59
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 64
    move-result v1

    .line 65
    sub-int v1, v8, v1

    .line 67
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 70
    move-result v1

    .line 71
    int-to-float v1, v1

    .line 72
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 77
    move-result v2

    .line 78
    int-to-float v2, v2

    .line 79
    mul-float/2addr v2, v0

    .line 80
    cmpg-float v0, v1, v2

    .line 82
    if-gez v0, :cond_54

    .line 84
    return-void

    .line 85
    :cond_54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->findSwapTargets(Landroidx/recyclerview/widget/RecyclerView$b0;)Ljava/util/List;

    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_5f

    .line 95
    return-void

    .line 96
    :cond_5f
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 98
    invoke-virtual {v1, p1, v0, v8, v9}, Landroidx/recyclerview/widget/f$e;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 101
    move-result-object v6

    .line 102
    if-nez v6, :cond_72

    .line 104
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mSwapTargets:Ljava/util/List;

    .line 106
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 109
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mDistances:Ljava/util/List;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 114
    return-void

    .line 115
    :cond_72
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 118
    move-result v7

    .line 119
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 122
    move-result v5

    .line 123
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 125
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    invoke-virtual {v0, v1, p1, v6}, Landroidx/recyclerview/widget/f$e;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8c

    .line 133
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 135
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    move-object v4, p1

    .line 138
    invoke-virtual/range {v2 .. v9}, Landroidx/recyclerview/widget/f$e;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroidx/recyclerview/widget/RecyclerView$b0;III)V

    .line 141
    :cond_8c
    return-void
.end method

.method public obtainVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    :cond_7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_18

    .line 18
    if-ne p1, v0, :cond_18

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 24
    goto :goto_2c

    .line 25
    :cond_18
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/f;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mPendingCleanup:Ljava/util/List;

    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 13

    .line 1
    const/4 p3, -0x1

    .line 2
    iput p3, p0, Landroidx/recyclerview/widget/f;->mOverdrawChildPosition:I

    .line 4
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p3, :cond_18

    .line 9
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 11
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/f;->getSelectedDxDy([F)V

    .line 14
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 16
    const/4 v0, 0x0

    .line 17
    aget v0, p3, v0

    .line 19
    const/4 v1, 0x1

    .line 20
    aget p3, p3, v1

    .line 22
    move v8, p3

    .line 23
    move v7, v0

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    move v7, v0

    .line 26
    move v8, v7

    .line 27
    :goto_1a
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 29
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 31
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 33
    iget v6, p0, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 35
    move-object v2, p1

    .line 36
    move-object v3, p2

    .line 37
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/f$e;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;IFF)V

    .line 40
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 13

    .line 1
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_15

    .line 6
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 8
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/f;->getSelectedDxDy([F)V

    .line 11
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 13
    const/4 v0, 0x0

    .line 14
    aget v0, p3, v0

    .line 16
    const/4 v1, 0x1

    .line 17
    aget p3, p3, v1

    .line 19
    move v8, p3

    .line 20
    move v7, v0

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    move v7, v0

    .line 23
    move v8, v7

    .line 24
    :goto_17
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 26
    iget-object v4, p0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 28
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 30
    iget v6, p0, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p2

    .line 34
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/f$e;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;IFF)V

    .line 37
    return-void
.end method

.method public postDispatchSwipe(Landroidx/recyclerview/widget/f$g;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/f$d;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Landroidx/recyclerview/widget/f$d;-><init>(Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/f$g;I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 3
    if-ne p1, v0, :cond_10

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 10
    if-eqz v0, :cond_10

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 17
    :cond_10
    return-void
.end method

.method public scrollIfNecessary()Z
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    const/4 v2, 0x0

    .line 6
    const-wide/high16 v3, -0x8000000000000000L

    .line 8
    if-nez v1, :cond_c

    .line 10
    iput-wide v3, v0, Landroidx/recyclerview/widget/f;->mDragScrollStartTimeInMs:J

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v5

    .line 17
    iget-wide v7, v0, Landroidx/recyclerview/widget/f;->mDragScrollStartTimeInMs:J

    .line 19
    cmp-long v1, v7, v3

    .line 21
    if-nez v1, :cond_19

    .line 23
    const-wide/16 v7, 0x0

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    sub-long v7, v5, v7

    .line 28
    :goto_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    move-result-object v1

    .line 34
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 36
    if-nez v9, :cond_2c

    .line 38
    new-instance v9, Landroid/graphics/Rect;

    .line 40
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 43
    iput-object v9, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    :cond_2c
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 47
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 49
    iget-object v10, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {v1, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 54
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 57
    move-result v9

    .line 58
    const/4 v10, 0x0

    .line 59
    if-eqz v9, :cond_7c

    .line 61
    iget v9, v0, Landroidx/recyclerview/widget/f;->mSelectedStartX:F

    .line 63
    iget v11, v0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 65
    add-float/2addr v9, v11

    .line 66
    float-to-int v9, v9

    .line 67
    iget-object v11, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 71
    sub-int v11, v9, v11

    .line 73
    iget-object v12, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    .line 78
    move-result v12

    .line 79
    sub-int/2addr v11, v12

    .line 80
    iget v12, v0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 82
    cmpg-float v13, v12, v10

    .line 84
    if-gez v13, :cond_59

    .line 86
    if-gez v11, :cond_59

    .line 88
    :goto_57
    move v12, v11

    .line 89
    goto :goto_7d

    .line 90
    :cond_59
    cmpl-float v11, v12, v10

    .line 92
    if-lez v11, :cond_7c

    .line 94
    iget-object v11, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 96
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 98
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 101
    move-result v11

    .line 102
    add-int/2addr v11, v9

    .line 103
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 105
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 107
    add-int/2addr v11, v9

    .line 108
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 113
    move-result v9

    .line 114
    iget-object v12, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    .line 119
    move-result v12

    .line 120
    sub-int/2addr v9, v12

    .line 121
    sub-int/2addr v11, v9

    .line 122
    if-lez v11, :cond_7c

    .line 124
    goto :goto_57

    .line 125
    :cond_7c
    move v12, v2

    .line 126
    :goto_7d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_c3

    .line 132
    iget v1, v0, Landroidx/recyclerview/widget/f;->mSelectedStartY:F

    .line 134
    iget v9, v0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 136
    add-float/2addr v1, v9

    .line 137
    float-to-int v1, v1

    .line 138
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 140
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 142
    sub-int v9, v1, v9

    .line 144
    iget-object v11, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 149
    move-result v11

    .line 150
    sub-int/2addr v9, v11

    .line 151
    iget v11, v0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 153
    cmpg-float v13, v11, v10

    .line 155
    if-gez v13, :cond_a0

    .line 157
    if-gez v9, :cond_a0

    .line 159
    :goto_9e
    move v1, v9

    .line 160
    goto :goto_c4

    .line 161
    :cond_a0
    cmpl-float v9, v11, v10

    .line 163
    if-lez v9, :cond_c3

    .line 165
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 167
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 169
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 172
    move-result v9

    .line 173
    add-int/2addr v9, v1

    .line 174
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mTmpRect:Landroid/graphics/Rect;

    .line 176
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 178
    add-int/2addr v9, v1

    .line 179
    iget-object v1, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 184
    move-result v1

    .line 185
    iget-object v10, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    .line 190
    move-result v10

    .line 191
    sub-int/2addr v1, v10

    .line 192
    sub-int/2addr v9, v1

    .line 193
    if-lez v9, :cond_c3

    .line 195
    goto :goto_9e

    .line 196
    :cond_c3
    move v1, v2

    .line 197
    :goto_c4
    if-eqz v12, :cond_dd

    .line 199
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 201
    iget-object v10, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    iget-object v11, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 205
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 207
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 210
    move-result v11

    .line 211
    iget-object v13, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 216
    move-result v13

    .line 217
    move-wide v14, v7

    .line 218
    invoke-virtual/range {v9 .. v15}, Landroidx/recyclerview/widget/f$e;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 221
    move-result v12

    .line 222
    :cond_dd
    move v14, v12

    .line 223
    if-eqz v1, :cond_fc

    .line 225
    iget-object v9, v0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 227
    iget-object v10, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    iget-object v11, v0, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 231
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 233
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 236
    move-result v11

    .line 237
    iget-object v12, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 242
    move-result v13

    .line 243
    move v12, v1

    .line 244
    move v1, v14

    .line 245
    move-wide v14, v7

    .line 246
    invoke-virtual/range {v9 .. v15}, Landroidx/recyclerview/widget/f$e;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 249
    move-result v7

    .line 250
    move v12, v1

    .line 251
    move v1, v7

    .line 252
    goto :goto_fd

    .line 253
    :cond_fc
    move v12, v14

    .line 254
    :goto_fd
    if-nez v12, :cond_105

    .line 256
    if-eqz v1, :cond_102

    .line 258
    goto :goto_105

    .line 259
    :cond_102
    iput-wide v3, v0, Landroidx/recyclerview/widget/f;->mDragScrollStartTimeInMs:J

    .line 261
    return v2

    .line 262
    :cond_105
    :goto_105
    iget-wide v7, v0, Landroidx/recyclerview/widget/f;->mDragScrollStartTimeInMs:J

    .line 264
    cmp-long v2, v7, v3

    .line 266
    if-nez v2, :cond_10d

    .line 268
    iput-wide v5, v0, Landroidx/recyclerview/widget/f;->mDragScrollStartTimeInMs:J

    .line 270
    :cond_10d
    iget-object v2, v0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    invoke-virtual {v2, v12, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 275
    const/4 v1, 0x1

    .line 276
    return v1
.end method

.method public select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 26

    .line 1
    move-object/from16 v11, p0

    .line 3
    move-object/from16 v12, p1

    .line 5
    move/from16 v13, p2

    .line 7
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    if-ne v12, v0, :cond_f

    .line 11
    iget v0, v11, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 13
    if-ne v13, v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    .line 18
    iput-wide v0, v11, Landroidx/recyclerview/widget/f;->mDragScrollStartTimeInMs:J

    .line 20
    iget v4, v11, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 22
    const/4 v14, 0x1

    .line 23
    invoke-virtual {v11, v12, v14}, Landroidx/recyclerview/widget/f;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 26
    iput v13, v11, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 28
    const/4 v15, 0x2

    .line 29
    if-ne v13, v15, :cond_30

    .line 31
    if-eqz v12, :cond_28

    .line 33
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 35
    iput-object v0, v11, Landroidx/recyclerview/widget/f;->mOverdrawChild:Landroid/view/View;

    .line 37
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/f;->addChildDrawingOrderCallback()V

    .line 40
    goto :goto_30

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string v1, "Must pass a ViewHolder when dragging"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    :cond_30
    :goto_30
    mul-int/lit8 v0, v13, 0x8

    .line 51
    const/16 v10, 0x8

    .line 53
    add-int/2addr v0, v10

    .line 54
    shl-int v0, v14, v0

    .line 56
    add-int/lit8 v16, v0, -0x1

    .line 58
    iget-object v9, v11, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 60
    const/4 v8, 0x0

    .line 61
    if-eqz v9, :cond_f7

    .line 63
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_e3

    .line 71
    if-ne v4, v15, :cond_4a

    .line 73
    move v7, v8

    .line 74
    goto :goto_4f

    .line 75
    :cond_4a
    invoke-direct {v11, v9}, Landroidx/recyclerview/widget/f;->swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 78
    move-result v0

    .line 79
    move v7, v0

    .line 80
    :goto_4f
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/f;->releaseVelocityTracker()V

    .line 83
    const/4 v0, 0x4

    .line 84
    const/4 v1, 0x0

    .line 85
    if-eq v7, v14, :cond_7c

    .line 87
    if-eq v7, v15, :cond_7c

    .line 89
    if-eq v7, v0, :cond_69

    .line 91
    if-eq v7, v10, :cond_69

    .line 93
    const/16 v2, 0x10

    .line 95
    if-eq v7, v2, :cond_69

    .line 97
    const/16 v2, 0x20

    .line 99
    if-eq v7, v2, :cond_69

    .line 101
    move/from16 v17, v1

    .line 103
    move/from16 v18, v17

    .line 105
    goto :goto_8e

    .line 106
    :cond_69
    iget v2, v11, Landroidx/recyclerview/widget/f;->mDx:F

    .line 108
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 111
    move-result v2

    .line 112
    iget-object v3, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 117
    move-result v3

    .line 118
    int-to-float v3, v3

    .line 119
    mul-float/2addr v2, v3

    .line 120
    move/from16 v18, v1

    .line 122
    move/from16 v17, v2

    .line 124
    goto :goto_8e

    .line 125
    :cond_7c
    iget v2, v11, Landroidx/recyclerview/widget/f;->mDy:F

    .line 127
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 130
    move-result v2

    .line 131
    iget-object v3, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 136
    move-result v3

    .line 137
    int-to-float v3, v3

    .line 138
    mul-float/2addr v2, v3

    .line 139
    move/from16 v17, v1

    .line 141
    move/from16 v18, v2

    .line 143
    :goto_8e
    if-ne v4, v15, :cond_92

    .line 145
    move v6, v10

    .line 146
    goto :goto_97

    .line 147
    :cond_92
    if-lez v7, :cond_96

    .line 149
    move v6, v15

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    move v6, v0

    .line 152
    :goto_97
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 154
    invoke-direct {v11, v0}, Landroidx/recyclerview/widget/f;->getSelectedDxDy([F)V

    .line 157
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mTmpPosition:[F

    .line 159
    aget v19, v0, v8

    .line 161
    aget v20, v0, v14

    .line 163
    new-instance v5, Landroidx/recyclerview/widget/f$c;

    .line 165
    move-object v0, v5

    .line 166
    move-object/from16 v1, p0

    .line 168
    move-object v2, v9

    .line 169
    move v3, v6

    .line 170
    move-object v14, v5

    .line 171
    move/from16 v5, v19

    .line 173
    move v15, v6

    .line 174
    move/from16 v6, v20

    .line 176
    move/from16 v21, v7

    .line 178
    move/from16 v7, v17

    .line 180
    move v13, v8

    .line 181
    move/from16 v8, v18

    .line 183
    move-object/from16 v22, v9

    .line 185
    move/from16 v9, v21

    .line 187
    move/from16 v21, v10

    .line 189
    move-object/from16 v10, v22

    .line 191
    invoke-direct/range {v0 .. v10}, Landroidx/recyclerview/widget/f$c;-><init>(Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$b0;IIFFFFILandroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 194
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 196
    iget-object v1, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    sub-float v2, v17, v19

    .line 200
    sub-float v3, v18, v20

    .line 202
    invoke-virtual {v0, v1, v15, v2, v3}, Landroidx/recyclerview/widget/f$e;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    .line 205
    move-result-wide v0

    .line 206
    iget-object v2, v14, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 208
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mRecoverAnimations:Ljava/util/List;

    .line 213
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, v22

    .line 218
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 221
    iget-object v0, v14, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 223
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 226
    const/4 v8, 0x1

    .line 227
    goto :goto_f3

    .line 228
    :cond_e3
    move v13, v8

    .line 229
    move-object v0, v9

    .line 230
    move/from16 v21, v10

    .line 232
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 234
    invoke-virtual {v11, v1}, Landroidx/recyclerview/widget/f;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 237
    iget-object v1, v11, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 239
    iget-object v2, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 244
    :goto_f3
    const/4 v0, 0x0

    .line 245
    iput-object v0, v11, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 247
    goto :goto_fa

    .line 248
    :cond_f7
    move v13, v8

    .line 249
    move/from16 v21, v10

    .line 251
    :goto_fa
    if-eqz v12, :cond_12d

    .line 253
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 255
    iget-object v1, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 257
    invoke-virtual {v0, v1, v12}, Landroidx/recyclerview/widget/f$e;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 260
    move-result v0

    .line 261
    and-int v0, v0, v16

    .line 263
    iget v1, v11, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 265
    mul-int/lit8 v1, v1, 0x8

    .line 267
    shr-int/2addr v0, v1

    .line 268
    iput v0, v11, Landroidx/recyclerview/widget/f;->mSelectedFlags:I

    .line 270
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 275
    move-result v0

    .line 276
    int-to-float v0, v0

    .line 277
    iput v0, v11, Landroidx/recyclerview/widget/f;->mSelectedStartX:F

    .line 279
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 284
    move-result v0

    .line 285
    int-to-float v0, v0

    .line 286
    iput v0, v11, Landroidx/recyclerview/widget/f;->mSelectedStartY:F

    .line 288
    iput-object v12, v11, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 290
    move/from16 v0, p2

    .line 292
    move v2, v13

    .line 293
    const/4 v1, 0x2

    .line 294
    if-ne v0, v1, :cond_12e

    .line 296
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 298
    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 301
    goto :goto_12e

    .line 302
    :cond_12d
    move v2, v13

    .line 303
    :cond_12e
    :goto_12e
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_140

    .line 311
    iget-object v1, v11, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 313
    if-eqz v1, :cond_13c

    .line 315
    const/4 v14, 0x1

    .line 316
    goto :goto_13d

    .line 317
    :cond_13c
    move v14, v2

    .line 318
    :goto_13d
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 321
    :cond_140
    if-nez v8, :cond_14b

    .line 323
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 325
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 332
    :cond_14b
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 334
    iget-object v1, v11, Landroidx/recyclerview/widget/f;->mSelected:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 336
    iget v2, v11, Landroidx/recyclerview/widget/f;->mActionState:I

    .line 338
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/f$e;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 341
    iget-object v0, v11, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 346
    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f$e;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "ItemTouchHelper"

    .line 11
    if-nez v0, :cond_12

    .line 13
    const-string p1, "Start drag has been called but dragging is not enabled"

    .line 15
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    if-eq v0, v2, :cond_22

    .line 29
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 31
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->obtainVelocityTracker()V

    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 41
    iput v0, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 47
    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mCallback:Landroidx/recyclerview/widget/f$e;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/f$e;->hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "ItemTouchHelper"

    .line 11
    if-nez v0, :cond_12

    .line 13
    const-string p1, "Start swipe has been called but swiping is not enabled"

    .line 15
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    if-eq v0, v2, :cond_22

    .line 29
    const-string p1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    .line 31
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->obtainVelocityTracker()V

    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 41
    iput v0, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/f;->select(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 47
    return-void
.end method

.method public updateDxDy(Landroid/view/MotionEvent;II)V
    .registers 5

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 8
    move-result p1

    .line 9
    iget p3, p0, Landroidx/recyclerview/widget/f;->mInitialTouchX:F

    .line 11
    sub-float/2addr v0, p3

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 14
    iget p3, p0, Landroidx/recyclerview/widget/f;->mInitialTouchY:F

    .line 16
    sub-float/2addr p1, p3

    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 19
    and-int/lit8 p1, p2, 0x4

    .line 21
    const/4 p3, 0x0

    .line 22
    if-nez p1, :cond_1d

    .line 24
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 30
    :cond_1d
    and-int/lit8 p1, p2, 0x8

    .line 32
    if-nez p1, :cond_29

    .line 34
    iget p1, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 36
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/recyclerview/widget/f;->mDx:F

    .line 42
    :cond_29
    and-int/lit8 p1, p2, 0x1

    .line 44
    if-nez p1, :cond_35

    .line 46
    iget p1, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 48
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 51
    move-result p1

    .line 52
    iput p1, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 54
    :cond_35
    and-int/lit8 p1, p2, 0x2

    .line 56
    if-nez p1, :cond_41

    .line 58
    iget p1, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 60
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 63
    move-result p1

    .line 64
    iput p1, p0, Landroidx/recyclerview/widget/f;->mDy:F

    .line 66
    :cond_41
    return-void
.end method
