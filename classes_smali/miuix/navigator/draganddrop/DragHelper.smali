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

    new-instance v0, Lmiuix/navigator/draganddrop/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/navigator/draganddrop/b;-><init>(I)V

    sput-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiuix/navigator/draganddrop/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmiuix/navigator/draganddrop/b;-><init>(I)V

    sput-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper$2;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/navigator/draganddrop/DragHelper;->ALPHA:Lmiuix/animation/property/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iput v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;-><init>(Lmiuix/navigator/draganddrop/DragHelper;Lmiuix/navigator/draganddrop/DragHelper$1;)V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper$1;

    invoke-direct {v0, p0}, Lmiuix/navigator/draganddrop/DragHelper$1;-><init>(Lmiuix/navigator/draganddrop/DragHelper;)V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiuix/navigator/draganddrop/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/a;-><init>(Lmiuix/navigator/draganddrop/DragHelper;I)V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiuix/navigator/draganddrop/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/a;-><init>(Lmiuix/navigator/draganddrop/DragHelper;I)V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiuix/navigator/draganddrop/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/draganddrop/a;-><init>(Lmiuix/navigator/draganddrop/DragHelper;I)V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRemovePlaceholderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$new$3()V

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/navigator/draganddrop/DragHelper;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaxDragScroll:I

    return p0
.end method

.method public static synthetic access$1100(Lmiuix/navigator/draganddrop/DragHelper;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1200()Lmiuix/animation/property/FloatProperty;
    .registers 1

    sget-object v0, Lmiuix/navigator/draganddrop/DragHelper;->ALPHA:Lmiuix/animation/property/FloatProperty;

    return-object v0
.end method

.method public static synthetic access$300(Lmiuix/navigator/draganddrop/DragHelper;)J
    .registers 3

    iget-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    return-wide v0
.end method

.method public static synthetic access$302(Lmiuix/navigator/draganddrop/DragHelper;J)J
    .registers 3

    iput-wide p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    return-wide p1
.end method

.method public static synthetic access$400(Lmiuix/navigator/draganddrop/DragHelper;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDelta:I

    return p0
.end method

.method public static synthetic access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    return-void
.end method

.method public static synthetic access$700(Lmiuix/navigator/draganddrop/DragHelper;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mViewSize:I

    return p0
.end method

.method public static synthetic access$800()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static synthetic access$900()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Lmiuix/navigator/draganddrop/DragHelper;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

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

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRemovePlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cleanUp()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    return-void
.end method

.method private cleanUp(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iput-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    :cond_b
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_20

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

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanDragPlaceholder()V

    return-void
.end method

.method public static synthetic e(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->lambda$new$4()V

    return-void
.end method

.method private handleDragEnd()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragExit()V

    return-void
.end method

.method private handleDragExit()V
    .registers 3

    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    return-void

    :cond_9
    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->setMask(Z)V

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    return-void
.end method

.method private handleDragLocation()V
    .registers 8

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragExit()V

    return-void

    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->setMask(Z)V

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->scrollIfNecessary()V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iget v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    invoke-virtual {v0, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    div-int/lit8 v2, v2, 0x2

    if-nez v0, :cond_5f

    const/4 v1, 0x0

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iget v5, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    int-to-float v6, v2

    sub-float/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    sget v3, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_footer:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    :cond_5b
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    return-void

    :cond_5f
    invoke-direct {p0, v0, v1, v2}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocationStep2(Landroid/view/View;ZI)V

    return-void
.end method

.method private handleDragLocationStep2(Landroid/view/View;ZI)V
    .registers 6

    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    return-void

    :cond_e
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    sget v0, Lmiuix/navigator/R$id;->navigation_item_category:I

    if-ne p3, v0, :cond_22

    if-eqz p2, :cond_22

    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnViewUnchecked(Landroid/view/View;)V

    goto :goto_25

    :cond_22
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    :goto_25
    return-void

    :cond_26
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/draganddrop/DragStartFeedback;

    if-nez v1, :cond_34

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    return-void

    :cond_34
    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-direct {p0, p1, p2, p3, v1}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocationStep3(Landroid/view/View;ZILmiuix/navigator/draganddrop/DragStartFeedback;)V

    return-void
.end method

.method private handleDragLocationStep3(Landroid/view/View;ZILmiuix/navigator/draganddrop/DragStartFeedback;)V
    .registers 10

    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_footer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    invoke-virtual {p4}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canAccept()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->hasAliveItems()Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    invoke-virtual {p4}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    move-result p4

    if-nez v3, :cond_2a

    if-nez p4, :cond_2a

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    return-void

    :cond_2a
    if-nez v3, :cond_46

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    add-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    if-nez v0, :cond_41

    iget p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    invoke-direct {p0, p1, v1}, Lmiuix/navigator/draganddrop/DragHelper;->handleInsertPlaceholder(Landroid/view/View;Z)V

    return-void

    :cond_46
    const/4 v3, 0x0

    if-nez p4, :cond_56

    if-eqz p2, :cond_52

    if-eqz v0, :cond_4e

    move-object p1, v3

    :cond_4e
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnView(Landroid/view/View;)V

    goto :goto_55

    :cond_52
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    :goto_55
    return-void

    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p4

    iget v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    sub-int/2addr v4, p3

    sub-int/2addr p4, v4

    int-to-float p2, p2

    iget p3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_76

    int-to-float p2, p4

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_76

    if-eqz v0, :cond_72

    move-object p1, v3

    :cond_72
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnView(Landroid/view/View;)V

    goto :goto_82

    :cond_76
    if-nez v0, :cond_7e

    int-to-float p2, p4

    cmpl-float p2, p3, p2

    if-lez p2, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v2

    :goto_7f
    invoke-direct {p0, p1, v1}, Lmiuix/navigator/draganddrop/DragHelper;->handleInsertPlaceholder(Landroid/view/View;Z)V

    :goto_82
    return-void
.end method

.method private handleDragStart(Lmiuix/navigator/adapter/NavigationAdapter;Landroid/view/DragEvent;)Z
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    invoke-virtual {p1, v0, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->dispatchOnDragStart(Ljava/util/Map;Landroid/view/DragEvent;)V

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private handleDrop(Landroid/view/DragEvent;)Z
    .registers 7

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mFeedbackMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/draganddrop/DragStartFeedback;

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_38

    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canAccept()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    move-result-object v0

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDropAccept(Landroid/view/DragEvent;Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result p1

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return p1

    :cond_38
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->preReplaceDragPlaceholder()V

    iput-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedPosition:I

    :goto_49
    move-object v0, v2

    goto :goto_5b

    :cond_4b
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v2, :cond_5b

    iput-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_49

    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    move-result-object v2

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDropInsert(Landroid/view/DragEvent;Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->postReplaceDragPlaceholder(Z)V

    return p1

    :cond_6b
    return v1
.end method

.method private handleHoverOnView(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/navigator/R$id;->navigation_item_category:I

    if-eq v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/navigator/R$id;->navigation_item_drag_placeholder:I

    if-ne v0, v1, :cond_13

    :cond_12
    const/4 p1, 0x0

    :cond_13
    invoke-direct {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->handleHoverOnViewUnchecked(Landroid/view/View;)V

    return-void
.end method

.method private handleHoverOnViewUnchecked(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_1a
    return-void
.end method

.method private handleInsertPlaceholder(Landroid/view/View;Z)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_71

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/navigator/R$id;->navigation_item_drag_placeholder:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2a

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-ne p1, p2, :cond_41

    invoke-direct {p0, v2}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    return-void

    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/navigator/R$id;->navigation_item_category:I

    if-eq v0, v1, :cond_41

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    if-eqz p2, :cond_42

    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_41
    move p1, v2

    :cond_42
    :goto_42
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-ne p2, v0, :cond_50

    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedPosition:I

    if-ne p1, v0, :cond_50

    invoke-direct {p0, v2}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    return-void

    :cond_50
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-ne p2, v0, :cond_59

    iget p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    if-ne p1, p2, :cond_59

    return-void

    :cond_59
    invoke-direct {p0, v2}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp(Z)V

    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iput-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertPlaceholderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_71
    :goto_71
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->cleanUp()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    if-eqz v0, :cond_42

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_11

    goto :goto_42

    :cond_11
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    move-result-object v0

    :goto_1b
    if-eqz v0, :cond_35

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mLastAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v3

    if-ne v2, v3, :cond_35

    invoke-interface {v0, v1}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDragHover(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void

    :cond_35
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_42
    :goto_42
    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->removeDragPlaceholder()V

    :cond_c
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertPosition:I

    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedPosition:I

    const/4 v2, 0x0

    iput-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mPendingInsertAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->insertDragPlaceholder(I)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->removeDragPlaceholder()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mInsertedAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

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

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->startScroll(I)V

    return-void

    :cond_30
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_74

    iget v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lmiuix/navigator/draganddrop/DragHelper;->startScroll(I)V

    return-void

    :cond_74
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMsStartScroll:J

    return-void
.end method

.method private setupCallBacks()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method private startScroll(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDelta:I

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->destroyCallBacks()V

    :cond_a
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lmiuix/navigator/draganddrop/DragHelper;->initResources()V

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->setupCallBacks()V

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

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/navigator/R$styleable;->NavigatorDragAndDrop:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$styleable;->NavigatorDragAndDrop_navigatorDragScrollZone:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mScrollZone:I

    sget v1, Lmiuix/navigator/R$styleable;->NavigatorDragAndDrop_navigatorDragItemInsertZone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mDragInsertZone:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v3, Lmiuix/navigator/R$attr;->navigatorItemMinHeight:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mViewSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaxDragScroll:I

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mHoverOnView:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    :cond_a
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    if-eq p1, v0, :cond_8

    goto :goto_5c

    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapter;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lmiuix/navigator/adapter/NavigationAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_5c

    :cond_17
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_57

    const/4 p1, 0x2

    if-eq v0, p1, :cond_47

    const/4 p1, 0x3

    if-eq v0, p1, :cond_33

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2f

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2b

    return v1

    :cond_2b
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragExit()V

    return v1

    :cond_2f
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragEnd()V

    return v1

    :cond_33
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    invoke-direct {p0, p2}, Lmiuix/navigator/draganddrop/DragHelper;->handleDrop(Landroid/view/DragEvent;)Z

    move-result p1

    return p1

    :cond_47
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mX:F

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mY:F

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragLocation()V

    return v1

    :cond_57
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/draganddrop/DragHelper;->handleDragStart(Lmiuix/navigator/adapter/NavigationAdapter;Landroid/view/DragEvent;)Z

    move-result p1

    return p1

    :cond_5c
    :goto_5c
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 11

    iget-object p3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    invoke-virtual {p3}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_68

    iget-object p3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    invoke-static {p3}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->access$100(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Ljava/util/Set;

    move-result-object p3

    if-nez p3, :cond_11

    goto :goto_68

    :cond_11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p3, :cond_68

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v2, :cond_32

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    invoke-static {v3}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->access$100(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    :cond_32
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lmiuix/navigator/R$id;->navigation_item_drag_placeholder:I

    if-ne v2, v3, :cond_3b

    goto :goto_65

    :cond_3b
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper;->mMaskHelper:Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->access$200(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_68
    :goto_68
    return-void
.end method
