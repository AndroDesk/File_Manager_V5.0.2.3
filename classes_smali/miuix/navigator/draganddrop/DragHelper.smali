.class public Lmiuix/navigator/draganddrop/DragHelper;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "DragHelper.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroidx/recyclerview/widget/RecyclerView$p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;
    }
.end annotation


# static fields
.field private static final ALPHA:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final DELAY_HOVER_PRESS:J = 0x3e8L

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDelta:I

.field private mDragInsertZone:I

.field private mFeedbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/navigator/adapter/CategoryAdapterWrapper;",
            "Lmiuix/navigator/draganddrop/DragStartFeedback;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverOnView:Landroid/view/View;

.field private final mInsertPlaceholderRunnable:Ljava/lang/Runnable;

.field private mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

.field private mInsertedPosition:I

.field private mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

.field private final mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

.field private mMaxDragScroll:I

.field private mMsStartScroll:J

.field private mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

.field private mPendingInsertPosition:I

.field private final mPressRunnable:Ljava/lang/Runnable;

.field private final mRect:Landroid/graphics/RectF;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRemovePlaceholderRunnable:Ljava/lang/Runnable;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollZone:I

.field private mViewSize:I

.field private mX:F

.field private mY:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/navigator/draganddrop/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/draganddrop/b;-><init>(I)V

    .line 7
    sput-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 9
    new-instance v0, Lmiuix/navigator/draganddrop/b;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lmiuix/navigator/draganddrop/b;-><init>(I)V

    .line 15
    sput-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 17
    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper$2;

    .line 19
    const-string v1, "alpha"

    .line 21
    invoke-direct {v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$2;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v0, Lmiuix/navigator/draganddrop/DragHelper;->ALPHA:Lmiuix/animation/property/FloatProperty;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    const/high16 v0, -0x40800000  # -1.0f

    .line 6
    iput v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 8
    iput v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mBounds:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;-><init>(Lmiuix/navigator/draganddrop/DragHelper;Lmiuix/navigator/draganddrop/DragHelper$1;)V

    .line 30
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 32
    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    .line 36
    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper$1;

    .line 38
    invoke-direct {v0, p0}, Lmiuix/navigator/draganddrop/DragHelper$1;-><init>(Lmiuix/navigator/draganddrop/DragHelper;)V

    .line 41
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lmiuix/navigator/draganddrop/a;

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/a;-><init>(Lmiuix/navigator/draganddrop/DragHelper;I)V

    .line 49
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lmiuix/navigator/draganddrop/a;

    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/a;-><init>(Lmiuix/navigator/draganddrop/DragHelper;I)V

    .line 57
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lmiuix/navigator/draganddrop/a;

    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/a;-><init>(Lmiuix/navigator/draganddrop/DragHelper;I)V

    .line 65
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRemovePlaceholderRunnable:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$new$3()V

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/navigator/draganddrop/DragHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaxDragScroll:I

    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lmiuix/navigator/draganddrop/DragHelper;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200()Lmiuix/animation/property/FloatProperty;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/navigator/draganddrop/DragHelper;->ALPHA:Lmiuix/animation/property/FloatProperty;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Lmiuix/navigator/draganddrop/DragHelper;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$302(Lmiuix/navigator/draganddrop/DragHelper;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$400(Lmiuix/navigator/draganddrop/DragHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDelta:I

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lmiuix/navigator/draganddrop/DragHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mViewSize:I

    .line 3
    return p0
.end method

.method public static synthetic access$800()Landroid/view/animation/Interpolator;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 3
    return-object v0
.end method

.method public static synthetic access$900()Landroid/view/animation/Interpolator;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$new$2()V

    return-void
.end method

.method public static synthetic c(F)F
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$static$1(F)F

    move-result p0

    return p0
.end method

.method private cleanDragPlaceholder()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRemovePlaceholderRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8
    return-void
.end method

.method private cleanUp()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    return-void
.end method

.method private cleanUp(Z)V
    .registers 5

    .line 2
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4
    iput-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 5
    :cond_b
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iput-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 7
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_20

    .line 8
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanDragPlaceholder()V

    :cond_20
    return-void
.end method

.method public static synthetic d(F)F
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$static$0(F)F

    move-result p0

    return p0
.end method

.method private destroyCallBacks()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 12
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 17
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    .line 28
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 35
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 42
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanDragPlaceholder()V

    .line 45
    return-void
.end method

.method public static synthetic e(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$new$4()V

    return-void
.end method

.method private handleDragEnd()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    .line 4
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragExit()V

    .line 7
    return-void
.end method

.method private handleDragExit()V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 3
    const/high16 v1, -0x40800000  # -1.0f

    .line 5
    cmpl-float v0, v0, v1

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 12
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 17
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->setMask(Z)V

    .line 23
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 26
    return-void
.end method

.method private handleDragLocation()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 23
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 25
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_24

    .line 33
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragExit()V

    .line 36
    return-void

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 40
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->setMask(Z)V

    .line 46
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->scrollIfNecessary()V

    .line 49
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 53
    iget v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 55
    invoke-virtual {v0, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 63
    if-nez v0, :cond_5f

    .line 65
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iget v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 70
    iget v5, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 72
    int-to-float v6, v2

    .line 73
    sub-float/2addr v5, v6

    .line 74
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 77
    move-result v3

    .line 78
    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_5b

    .line 84
    sget v3, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_footer:I

    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_5f

    .line 92
    :cond_5b
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 95
    return-void

    .line 96
    :cond_5f
    invoke-direct {p0, v0, v1, v2}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocationStep2(Landroid/view/View;ZI)V

    .line 99
    return-void
.end method

.method private handleDragLocationStep2(Landroid/view/View;ZI)V
    .registers 6

    .line 1
    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 9
    if-nez v0, :cond_e

    .line 11
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->isExpanded()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_26

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    move-result p3

    .line 25
    sget v0, Lmiuix/navigator/R$id;->navigation_item_category:I

    .line 27
    if-ne p3, v0, :cond_22

    .line 29
    if-eqz p2, :cond_22

    .line 31
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnViewUnchecked(Landroid/view/View;)V

    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 38
    :goto_25
    return-void

    .line 39
    :cond_26
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    .line 41
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lmiuix/navigator/draganddrop/DragStartFeedback;

    .line 47
    if-nez v1, :cond_34

    .line 49
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 52
    return-void

    .line 53
    :cond_34
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 55
    invoke-direct {p0, p1, p2, p3, v1}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocationStep3(Landroid/view/View;ZILmiuix/navigator/draganddrop/DragStartFeedback;)V

    .line 58
    return-void
.end method

.method private handleDragLocationStep3(Landroid/view/View;ZILmiuix/navigator/draganddrop/DragStartFeedback;)V
    .registers 10

    .line 1
    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_footer:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    move v0, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v2

    .line 14
    :goto_d
    invoke-virtual {p4}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canAccept()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1d

    .line 20
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 22
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->hasAliveItems()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1d

    .line 28
    move v3, v1

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v3, v2

    .line 31
    :goto_1e
    invoke-virtual {p4}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    .line 34
    move-result p4

    .line 35
    if-nez v3, :cond_2a

    .line 37
    if-nez p4, :cond_2a

    .line 39
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 42
    return-void

    .line 43
    :cond_2a
    if-nez v3, :cond_46

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 52
    move-result p3

    .line 53
    add-int/2addr p3, p2

    .line 54
    div-int/lit8 p3, p3, 0x2

    .line 56
    if-nez v0, :cond_41

    .line 58
    iget p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 60
    int-to-float p3, p3

    .line 61
    cmpl-float p2, p2, p3

    .line 63
    if-lez p2, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v1, v2

    .line 67
    :goto_42
    invoke-direct {p0, p1, v1}, Lmiuix/navigator/draganddrop/DragHelper;->handleInsertPlaceholder(Landroid/view/View;Z)V

    .line 70
    return-void

    .line 71
    :cond_46
    const/4 v3, 0x0

    .line 72
    if-nez p4, :cond_56

    .line 74
    if-eqz p2, :cond_52

    .line 76
    if-eqz v0, :cond_4e

    .line 78
    move-object p1, v3

    .line 79
    :cond_4e
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnView(Landroid/view/View;)V

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 86
    :goto_55
    return-void

    .line 87
    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 90
    move-result p2

    .line 91
    add-int/2addr p2, p3

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 95
    move-result p4

    .line 96
    iget v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    .line 98
    sub-int/2addr v4, p3

    .line 99
    sub-int/2addr p4, v4

    .line 100
    int-to-float p2, p2

    .line 101
    iget p3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 103
    cmpg-float p2, p2, p3

    .line 105
    if-gtz p2, :cond_76

    .line 107
    int-to-float p2, p4

    .line 108
    cmpg-float p2, p3, p2

    .line 110
    if-gtz p2, :cond_76

    .line 112
    if-eqz v0, :cond_72

    .line 114
    move-object p1, v3

    .line 115
    :cond_72
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnView(Landroid/view/View;)V

    .line 118
    goto :goto_82

    .line 119
    :cond_76
    if-nez v0, :cond_7e

    .line 121
    int-to-float p2, p4

    .line 122
    cmpl-float p2, p3, p2

    .line 124
    if-lez p2, :cond_7e

    .line 126
    goto :goto_7f

    .line 127
    :cond_7e
    move v1, v2

    .line 128
    :goto_7f
    invoke-direct {p0, p1, v1}, Lmiuix/navigator/draganddrop/DragHelper;->handleInsertPlaceholder(Landroid/view/View;Z)V

    .line 131
    :goto_82
    return-void
.end method

.method private handleDragStart(Lmiuix/navigator/adapter/NavigationAdapter;Landroid/view/DragEvent;)Z
    .registers 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    .line 8
    invoke-virtual {p1, v0, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->dispatchOnDragStart(Ljava/util/Map;Landroid/view/DragEvent;)V

    .line 11
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 21
    move-result p1

    .line 22
    xor-int/lit8 p1, p1, 0x1

    .line 24
    return p1
.end method

.method private handleDrop(Landroid/view/DragEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    .line 9
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lmiuix/navigator/draganddrop/DragStartFeedback;

    .line 15
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_38

    .line 20
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canAccept()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_38

    .line 26
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 29
    move-result-object v0

    .line 30
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 34
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v0, p1, v2}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDropAccept(Landroid/view/DragEvent;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 41
    move-result p1

    .line 42
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 47
    iput-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 56
    return p1

    .line 57
    :cond_38
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_6b

    .line 63
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 65
    if-eqz v2, :cond_4b

    .line 67
    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->preReplaceDragPlaceholder()V

    .line 70
    iput-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 72
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedPosition:I

    .line 74
    :goto_49
    move-object v0, v2

    .line 75
    goto :goto_5b

    .line 76
    :cond_4b
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 78
    if-eqz v2, :cond_5b

    .line 80
    iput-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 82
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    .line 84
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 91
    goto :goto_49

    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v2, p1, v3, v1}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDropInsert(Landroid/view/DragEvent;Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->postReplaceDragPlaceholder(Z)V

    .line 107
    return p1

    .line 108
    :cond_6b
    return v1
.end method

.method private handleHoverOnView(Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_13

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    sget v1, Lmiuix/navigator/R$id;->navigation_item_category:I

    .line 9
    if-eq v0, v1, :cond_12

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    move-result v0

    .line 15
    sget v1, Lmiuix/navigator/R$id;->navigation_item_drag_placeholder:I

    .line 17
    if-ne v0, v1, :cond_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :cond_13
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnViewUnchecked(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method private handleHoverOnViewUnchecked(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    .line 10
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 12
    if-eqz p1, :cond_1a

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 18
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    .line 22
    const-wide/16 v1, 0x3e8

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 27
    :cond_1a
    return-void
.end method

.method private handleInsertPlaceholder(Landroid/view/View;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_71

    .line 17
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_71

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 27
    move-result v0

    .line 28
    sget v1, Lmiuix/navigator/R$id;->navigation_item_drag_placeholder:I

    .line 30
    const/4 v2, 0x0

    .line 31
    if-ne v0, v1, :cond_2a

    .line 33
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 35
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 37
    if-ne p1, p2, :cond_41

    .line 39
    invoke-direct {p0, v2}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 46
    move-result v0

    .line 47
    sget v1, Lmiuix/navigator/R$id;->navigation_item_category:I

    .line 49
    if-eq v0, v1, :cond_41

    .line 51
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 60
    move-result p1

    .line 61
    if-eqz p2, :cond_42

    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move p1, v2

    .line 67
    :cond_42
    :goto_42
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 69
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 71
    if-ne p2, v0, :cond_50

    .line 73
    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedPosition:I

    .line 75
    if-ne p1, v0, :cond_50

    .line 77
    invoke-direct {p0, v2}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    .line 80
    return-void

    .line 81
    :cond_50
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 83
    if-ne p2, v0, :cond_59

    .line 85
    iget p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    .line 87
    if-ne p1, p2, :cond_59

    .line 89
    return-void

    .line 90
    :cond_59
    invoke-direct {p0, v2}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    .line 93
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 95
    iput-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 97
    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    .line 99
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 113
    return-void

    .line 114
    :cond_71
    :goto_71
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    .line 117
    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_42

    .line 5
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    if-eqz v1, :cond_42

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    if-eq v0, v1, :cond_11

    .line 17
    goto :goto_42

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 20
    if-nez v0, :cond_17

    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 27
    move-result-object v0

    .line 28
    :goto_1b
    if-eqz v0, :cond_35

    .line 30
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 34
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 44
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 47
    move-result-object v3

    .line 48
    if-ne v2, v3, :cond_35

    .line 50
    invoke-interface {v0, v1}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDragHover(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 53
    return-void

    .line 54
    :cond_35
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_42

    .line 62
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 67
    :cond_42
    :goto_42
    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->removeDragPlaceholder()V

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 15
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 17
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    .line 19
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedPosition:I

    .line 21
    const/4 v2, 0x0

    .line 22
    iput-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->insertDragPlaceholder(I)V

    .line 27
    return-void
.end method

.method private synthetic lambda$new$4()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->removeDragPlaceholder()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 11
    :cond_a
    return-void
.end method

.method private static synthetic lambda$static$0(F)F
    .registers 2

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method private static synthetic lambda$static$1(F)F
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private scrollIfNecessary()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    .line 12
    int-to-float v2, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 19
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 21
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_30

    .line 29
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_30

    .line 38
    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 40
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    .line 42
    int-to-float v1, v1

    .line 43
    sub-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->startScroll(I)V

    .line 48
    return-void

    .line 49
    :cond_30
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 51
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 56
    move-result v1

    .line 57
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    .line 59
    sub-int/2addr v1, v2

    .line 60
    int-to-float v1, v1

    .line 61
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 66
    move-result v2

    .line 67
    int-to-float v2, v2

    .line 68
    iget-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 73
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    .line 80
    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 82
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_74

    .line 90
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_74

    .line 99
    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 101
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 106
    move-result v1

    .line 107
    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    .line 109
    sub-int/2addr v1, v2

    .line 110
    int-to-float v1, v1

    .line 111
    sub-float/2addr v0, v1

    .line 112
    float-to-int v0, v0

    .line 113
    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->startScroll(I)V

    .line 116
    return-void

    .line 117
    :cond_74
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    .line 128
    return-void
.end method

.method private setupCallBacks()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 11
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 16
    return-void
.end method

.method private startScroll(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDelta:I

    .line 3
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz v0, :cond_a

    .line 8
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->destroyCallBacks()V

    .line 11
    :cond_a
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    if-eqz p1, :cond_14

    .line 15
    invoke-virtual {p0}, Lmiuix/navigator/draganddrop/DragHelper;->initResources()V

    .line 18
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->setupCallBacks()V

    .line 21
    :cond_14
    return-void
.end method

.method public initResources()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lmiuix/navigator/R$styleable;->NavigatorDragAndDrop:[I

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 15
    move-result-object v0

    .line 16
    sget v1, Lmiuix/navigator/R$styleable;->NavigatorDragAndDrop_navigatorDragScrollZone:I

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    .line 25
    sget v1, Lmiuix/navigator/R$styleable;->NavigatorDragAndDrop_navigatorDragItemInsertZone:I

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    move-result v3

    .line 31
    iput v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 36
    move-result v1

    .line 37
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [I

    .line 51
    sget v3, Lmiuix/navigator/R$attr;->navigatorItemMinHeight:I

    .line 53
    aput v3, v1, v2

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mViewSize:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v0

    .line 74
    sget v1, Lmiuix/navigator/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaxDragScroll:I

    .line 82
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 3
    if-ne v0, p1, :cond_a

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    .line 8
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    .line 11
    :cond_a
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5c

    .line 6
    if-eq p1, v0, :cond_8

    .line 8
    goto :goto_5c

    .line 9
    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapter;

    .line 15
    if-eqz p1, :cond_5c

    .line 17
    invoke-virtual {p1}, Lmiuix/navigator/adapter/NavigationAdapter;->isEditing()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_5c

    .line 24
    :cond_17
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-eq v0, v1, :cond_57

    .line 31
    const/4 p1, 0x2

    .line 32
    if-eq v0, p1, :cond_47

    .line 34
    const/4 p1, 0x3

    .line 35
    if-eq v0, p1, :cond_33

    .line 37
    const/4 p1, 0x4

    .line 38
    if-eq v0, p1, :cond_2f

    .line 40
    const/4 p1, 0x6

    .line 41
    if-eq v0, p1, :cond_2b

    .line 43
    return v1

    .line 44
    :cond_2b
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragExit()V

    .line 47
    return v1

    .line 48
    :cond_2f
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragEnd()V

    .line 51
    return v1

    .line 52
    :cond_33
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 58
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 64
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    .line 67
    invoke-direct {p0, p2}, Lmiuix/navigator/draganddrop/DragHelper;->handleDrop(Landroid/view/DragEvent;)Z

    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_47
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    .line 78
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 81
    move-result p1

    .line 82
    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    .line 84
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    .line 87
    return v1

    .line 88
    :cond_57
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragStart(Lmiuix/navigator/adapter/NavigationAdapter;Landroid/view/DragEvent;)Z

    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_5c
    :goto_5c
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 11

    .line 1
    iget-object p3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 3
    invoke-virtual {p3}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->isEnabled()Z

    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_68

    .line 9
    iget-object p3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 11
    invoke-static {p3}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->access$100(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Ljava/util/Set;

    .line 14
    move-result-object p3

    .line 15
    if-nez p3, :cond_11

    .line 17
    goto :goto_68

    .line 18
    :cond_11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result p3

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_16
    if-ge v0, p3, :cond_68

    .line 25
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 37
    if-eqz v2, :cond_32

    .line 39
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 41
    invoke-static {v3}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->access$100(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Ljava/util/Set;

    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_65

    .line 51
    :cond_32
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 54
    move-result v2

    .line 55
    sget v3, Lmiuix/navigator/R$id;->navigation_item_drag_placeholder:I

    .line 57
    if-ne v2, v3, :cond_3b

    .line 59
    goto :goto_65

    .line 60
    :cond_3b
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 67
    move-result v2

    .line 68
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mBounds:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 77
    move-result v5

    .line 78
    add-int/2addr v5, v2

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 82
    move-result v6

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 86
    move-result v1

    .line 87
    add-int/2addr v1, v2

    .line 88
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mBounds:Landroid/graphics/Rect;

    .line 93
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    .line 95
    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->access$200(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Landroid/graphics/Paint;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_16

    .line 105
    :cond_68
    :goto_68
    return-void
.end method
