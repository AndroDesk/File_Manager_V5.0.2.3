.class public Lmiuix/internal/util/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/util/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/internal/util/ViewDragHelper$1;

    invoke-direct {v0}, Lmiuix/internal/util/ViewDragHelper$1;-><init>()V

    sput-object v0, Lmiuix/internal/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    new-instance v0, Lmiuix/internal/util/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lmiuix/internal/util/ViewDragHelper$2;-><init>(Lmiuix/internal/util/ViewDragHelper;)V

    iput-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_52

    if-eqz p3, :cond_4a

    iput-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000  # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    new-instance p2, Landroid/widget/Scroller;

    sget-object p3, Lmiuix/internal/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    return-void

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_56

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_56

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_30

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_30

    goto :goto_56

    :cond_30
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_47

    iget-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    :cond_47
    iget-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_56

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_56

    const/4 v1, 0x1

    :cond_56
    :goto_56
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v0

    :goto_1b
    if-eqz v1, :cond_2c

    if-eqz p1, :cond_2c

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p3, p2

    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_2b

    move v0, v2

    :cond_2b
    return v0

    :cond_2c
    if-eqz v1, :cond_46

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_45

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_45

    move v0, v2

    :cond_45
    return v0

    :cond_46
    if-eqz p1, :cond_5f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5f

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5f

    move v0, v2

    :cond_5f
    return v0
.end method

.method private clampMag(FFF)F
    .registers 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_a

    return v1

    :cond_a
    cmpl-float p2, v0, p3

    if-lez p2, :cond_15

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    goto :goto_14

    :cond_13
    neg-float p3, p3

    :goto_14
    return p3

    :cond_15
    return p1
.end method

.method private clampMag(III)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    if-le v0, p3, :cond_f

    if-lez p1, :cond_d

    goto :goto_e

    :cond_d
    neg-int p3, p3

    :goto_e
    return p3

    :cond_f
    return p1
.end method

.method private clearMotionHistory()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    :cond_b
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    :cond_32
    :goto_32
    return-void
.end method

.method private computeAxisDuration(III)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v2, v2

    invoke-direct {p0, v3}, Lmiuix/internal/util/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_36

    const/high16 p1, 0x447a0000  # 1000.0f

    int-to-float p2, p2

    div-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 v0, p1, 0x4

    goto :goto_45

    :cond_36
    if-nez p3, :cond_39

    goto :goto_45

    :cond_39
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v1

    const/high16 p2, 0x43800000  # 256.0f

    mul-float/2addr p1, p2

    float-to-int v0, p1

    :goto_45
    const/16 p1, 0x258

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 12

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->clampMag(III)I

    move-result p4

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->clampMag(III)I

    move-result p5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_2d

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_2f

    :cond_2d
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_2f
    div-float/2addr v0, v2

    if-eqz p5, :cond_35

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_37

    :cond_35
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_37
    div-float/2addr v1, v2

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lmiuix/internal/util/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    iget-object p4, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lmiuix/internal/util/ViewDragHelper;->computeAxisDuration(III)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;
    .registers 4

    invoke-static {p0, p2}, Lmiuix/internal/util/ViewDragHelper;->create(Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object p0

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    float-to-int p1, v0

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;
    .registers 4

    new-instance v0, Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lmiuix/internal/util/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_14

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L  # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private dragTo(IIII)V
    .registers 15

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_1d

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lmiuix/internal/util/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_1d
    move v6, p1

    if-eqz p4, :cond_2f

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lmiuix/internal/util/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_2f
    move v7, p2

    if-nez p3, :cond_34

    if-eqz p4, :cond_3f

    :cond_34
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3f
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 11

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_7

    array-length v1, v0

    if-gt v1, p1, :cond_50

    :cond_7
    add-int/lit8 p1, p1, 0x1

    new-array v1, p1, [F

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array v5, p1, [I

    new-array v6, p1, [I

    new-array p1, p1, [I

    if-eqz v0, :cond_42

    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    iput-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    iput-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    iput-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    iput-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    iput-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v6, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_50
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 15

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    return p1

    :cond_1c
    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lmiuix/internal/util/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v6

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private getEdgesTouched(II)I
    .registers 6

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1b

    or-int/lit8 v0, v0, 0x4

    :cond_1b
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_28

    or-int/lit8 v0, v0, 0x2

    :cond_28
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_35

    or-int/lit8 v0, v0, 0x8

    :cond_35
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewDragHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v0, v1, v2}, Lmiuix/internal/util/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v1, v2, v3}, Lmiuix/internal/util/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    :cond_e
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x2

    :cond_17
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_21

    or-int/lit8 v0, v0, 0x8

    :cond_21
    if-eqz v0, :cond_2f

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_2f
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .registers 6

    invoke-direct {p0, p3}, Lmiuix/internal/util/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->getEdgesTouched(II)I

    move-result p1

    aput p1, v0, p3

    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_22

    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    aput v4, v3, v2

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 10

    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public canScroll(Landroid/view/View;ZIIII)Z
    .registers 20

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_55

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_55

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_52

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_52

    add-int v8, p6, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_52

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_52

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v12, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lmiuix/internal/util/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_52

    return v2

    :cond_52
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_55
    if-eqz p2, :cond_6a

    move/from16 v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_6b

    move/from16 v1, p4

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :cond_6b
    :goto_6b
    return v2
.end method

.method public cancel()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_10
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_12

    invoke-virtual {p0, p1, v2}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public checkTouchSlop(II)Z
    .registers 9

    invoke-virtual {p0, p2}, Lmiuix/internal/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_16

    move p1, v2

    goto :goto_17

    :cond_16
    move p1, v1

    :goto_17
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    aget v4, v4, p2

    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_39

    move v1, v2

    :cond_39
    return v1

    :cond_3a
    if-eqz v0, :cond_49

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_48

    move v1, v2

    :cond_48
    return v1

    :cond_49
    if-eqz p1, :cond_57

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_57

    move v1, v2

    :cond_57
    return v1
.end method

.method public continueSettling(Z)Z
    .registers 13

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6f

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v10

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_2f

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2f
    if-eqz v9, :cond_36

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_36
    if-nez v8, :cond_3a

    if-eqz v9, :cond_43

    :cond_3a
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_43
    if-eqz v0, :cond_60

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_60

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_60

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    :cond_60
    if-nez v0, :cond_6f

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6f

    :cond_6c
    invoke-virtual {p0, v1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    :cond_6f
    :goto_6f
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne p1, v2, :cond_74

    const/4 v1, 0x1

    :cond_74
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_32

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Lmiuix/internal/util/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_2f

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .registers 15

    iget-boolean v0, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_30

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    return-void

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivePointerId()I
    .registers 2

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .registers 2

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .registers 2

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .registers 2

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public isEdgeTouched(I)Z
    .registers 6

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_12

    invoke-virtual {p0, p1, v2}, Lmiuix/internal/util/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public isEdgeTouched(II)Z
    .registers 4

    invoke-virtual {p0, p2}, Lmiuix/internal/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public isPointerDown(I)Z
    .registers 4

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 5

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    :cond_d
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_17
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_159

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_bf

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_75

    const/4 v4, 0x6

    if-eq v0, v4, :cond_30

    goto/16 :goto_181

    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_70

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_70

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_40
    const/4 v3, -0x1

    if-ge v2, v1, :cond_6a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_4c

    goto :goto_67

    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_67

    invoke-virtual {p0, v6, v4}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_67

    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    goto :goto_6b

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6a
    move p1, v3

    :goto_6b
    if-ne p1, v3, :cond_70

    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_70
    invoke-direct {p0, v0}, Lmiuix/internal/util/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_181

    :cond_75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_a3

    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_181

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_181

    :cond_a3
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_181

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_181

    :cond_b2
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_ba

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lmiuix/internal/util/ViewDragHelper;->dispatchViewReleased(FF)V

    :cond_ba
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    goto/16 :goto_181

    :cond_bf
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_107

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v0}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-nez v0, :cond_cd

    goto/16 :goto_181

    :cond_cd
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_181

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_181

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lmiuix/internal/util/ViewDragHelper;->dragTo(IIII)V

    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_181

    :cond_107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_10b
    if-ge v2, v0, :cond_14a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v4

    if-nez v4, :cond_118

    goto :goto_147

    :cond_118
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    iget-object v7, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    invoke-direct {p0, v6, v7, v1}, Lmiuix/internal/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v8, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne v8, v3, :cond_134

    goto :goto_14a

    :cond_134
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v6, v7}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_147

    invoke-virtual {p0, v4, v1}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_147

    goto :goto_14a

    :cond_147
    :goto_147
    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    :cond_14a
    :goto_14a
    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_181

    :cond_14e
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_155

    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_155
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    goto :goto_181

    :cond_159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    invoke-virtual {p0, v2, p1}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_181

    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_181
    :goto_181
    return-void
.end method

.method public setDragState(I)V
    .registers 3

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    if-nez p1, :cond_10

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_10
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    iget-boolean v0, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    :cond_d
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_17
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_bd

    if-eq v0, v4, :cond_b9

    if-eq v0, v3, :cond_6f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_b9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_39

    const/4 v3, 0x6

    if-eq v0, v3, :cond_30

    goto/16 :goto_ed

    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_ed

    :cond_39
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v5, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_5e

    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    and-int v3, p1, v1

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v3, p1, v0}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_ed

    :cond_5e
    if-ne v1, v3, :cond_ed

    float-to-int v1, v5

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_ed

    invoke-virtual {p0, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_ed

    :cond_6f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    move v1, v2

    :goto_74
    if-ge v1, v0, :cond_b5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v5

    if-nez v5, :cond_81

    goto :goto_b2

    :cond_81
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, v3

    sub-float v7, v5, v7

    iget-object v8, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    aget v8, v8, v3

    sub-float v8, v6, v8

    invoke-direct {p0, v7, v8, v3}, Lmiuix/internal/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v9, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne v9, v4, :cond_9d

    goto :goto_b5

    :cond_9d
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b2

    invoke-direct {p0, v5, v7, v8}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-virtual {p0, v5, v3}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b2

    goto :goto_b5

    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_b5
    :goto_b5
    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_ed

    :cond_b9
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    goto :goto_ed

    :cond_bd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v0, v1, :cond_dd

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_dd

    invoke-virtual {p0, v0, p1}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    :cond_dd
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    and-int v3, v0, v1

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v3, v0, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_ed
    :goto_ed
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    if-ne p1, v4, :cond_f2

    move v2, v4

    :cond_f2
    return v2
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 4

    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p1}, Lmiuix/internal/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1
.end method

.method public tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/util/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput p2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
