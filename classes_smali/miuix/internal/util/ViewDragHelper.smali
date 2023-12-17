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

    .line 1
    new-instance v0, Lmiuix/internal/util/ViewDragHelper$1;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/util/ViewDragHelper$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/internal/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 7
    new-instance v0, Lmiuix/internal/util/ViewDragHelper$2;

    .line 9
    invoke-direct {v0, p0}, Lmiuix/internal/util/ViewDragHelper$2;-><init>(Lmiuix/internal/util/ViewDragHelper;)V

    .line 12
    iput-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 14
    if-eqz p2, :cond_52

    .line 16
    if-eqz p3, :cond_4a

    .line 18
    iput-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 20
    iput-object p3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    move-result-object p3

    .line 34
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 36
    const/high16 v0, 0x41a00000  # 20.0f

    .line 38
    mul-float/2addr p3, v0

    .line 39
    const/high16 v0, 0x3f000000  # 0.5f

    .line 41
    add-float/2addr p3, v0

    .line 42
    float-to-int p3, p3

    .line 43
    iput p3, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    .line 45
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 48
    move-result p3

    .line 49
    iput p3, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 54
    move-result p3

    .line 55
    int-to-float p3, p3

    .line 56
    iput p3, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    .line 58
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 61
    move-result p2

    .line 62
    int-to-float p2, p2

    .line 63
    iput p2, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 65
    new-instance p2, Landroid/widget/Scroller;

    .line 67
    sget-object p3, Lmiuix/internal/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    invoke-direct {p2, p1, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 72
    iput-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 74
    return-void

    .line 75
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    const-string p2, "Callback may not be null"

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    const-string p2, "Parent view may not be null"

    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 11
    aget v0, v0, p3

    .line 13
    and-int/2addr v0, p4

    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne v0, p4, :cond_56

    .line 17
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    .line 19
    and-int/2addr v0, p4

    .line 20
    if-eqz v0, :cond_56

    .line 22
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 24
    aget v0, v0, p3

    .line 26
    and-int/2addr v0, p4

    .line 27
    if-eq v0, p4, :cond_56

    .line 29
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 31
    aget v0, v0, p3

    .line 33
    and-int/2addr v0, p4

    .line 34
    if-eq v0, p4, :cond_56

    .line 36
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    .line 38
    int-to-float v2, v0

    .line 39
    cmpg-float v2, p1, v2

    .line 41
    if-gtz v2, :cond_30

    .line 43
    int-to-float v0, v0

    .line 44
    cmpg-float v0, p2, v0

    .line 46
    if-gtz v0, :cond_30

    .line 48
    goto :goto_56

    .line 49
    :cond_30
    const/high16 v0, 0x3f000000  # 0.5f

    .line 51
    mul-float/2addr p2, v0

    .line 52
    cmpg-float p2, p1, p2

    .line 54
    if-gez p2, :cond_47

    .line 56
    iget-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 58
    invoke-virtual {p2, p4}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeLock(I)Z

    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_47

    .line 64
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 66
    aget p2, p1, p3

    .line 68
    or-int/2addr p2, p4

    .line 69
    aput p2, p1, p3

    .line 71
    return v1

    .line 72
    :cond_47
    iget-object p2, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 74
    aget p2, p2, p3

    .line 76
    and-int/2addr p2, p4

    .line 77
    if-nez p2, :cond_56

    .line 79
    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    .line 81
    int-to-float p2, p2

    .line 82
    cmpl-float p1, p1, p2

    .line 84
    if-lez p1, :cond_56

    .line 86
    const/4 v1, 0x1

    .line 87
    :cond_56
    :goto_56
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
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

    .line 2
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

    .line 3
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

    .line 4
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

    .line 5
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

    .line 2
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

    .line 1
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

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 3
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 6
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 8
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 9
    iput v1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .registers 4

    .line 10
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    .line 11
    :cond_b
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 12
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 13
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 14
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 15
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 16
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 17
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 18
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v1

    .line 11
    div-int/lit8 v2, v1, 0x2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 16
    move-result v3

    .line 17
    int-to-float v3, v3

    .line 18
    int-to-float v1, v1

    .line 19
    div-float/2addr v3, v1

    .line 20
    const/high16 v1, 0x3f800000  # 1.0f

    .line 22
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 25
    move-result v3

    .line 26
    int-to-float v2, v2

    .line 27
    invoke-direct {p0, v3}, Lmiuix/internal/util/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    .line 30
    move-result v3

    .line 31
    mul-float/2addr v3, v2

    .line 32
    add-float/2addr v3, v2

    .line 33
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result p2

    .line 37
    if-lez p2, :cond_36

    .line 39
    const/high16 p1, 0x447a0000  # 1000.0f

    .line 41
    int-to-float p2, p2

    .line 42
    div-float/2addr v3, p2

    .line 43
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 46
    move-result p2

    .line 47
    mul-float/2addr p2, p1

    .line 48
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 51
    move-result p1

    .line 52
    mul-int/lit8 v0, p1, 0x4

    .line 54
    goto :goto_45

    .line 55
    :cond_36
    if-nez p3, :cond_39

    .line 57
    goto :goto_45

    .line 58
    :cond_39
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 61
    move-result p1

    .line 62
    int-to-float p1, p1

    .line 63
    int-to-float p2, p3

    .line 64
    div-float/2addr p1, p2

    .line 65
    add-float/2addr p1, v1

    .line 66
    const/high16 p2, 0x43800000  # 256.0f

    .line 68
    mul-float/2addr p1, p2

    .line 69
    float-to-int v0, p1

    .line 70
    :goto_45
    const/16 p1, 0x258

    .line 72
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 75
    move-result p1

    .line 76
    return p1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 12

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    .line 6
    float-to-int v1, v1

    .line 7
    invoke-direct {p0, p4, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->clampMag(III)I

    .line 10
    move-result p4

    .line 11
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 13
    float-to-int v0, v0

    .line 14
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    .line 16
    float-to-int v1, v1

    .line 17
    invoke-direct {p0, p5, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->clampMag(III)I

    .line 20
    move-result p5

    .line 21
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 24
    move-result v0

    .line 25
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 28
    move-result v1

    .line 29
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 32
    move-result v2

    .line 33
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result v3

    .line 37
    add-int v4, v2, v3

    .line 39
    add-int v5, v0, v1

    .line 41
    if-eqz p4, :cond_2d

    .line 43
    int-to-float v0, v2

    .line 44
    int-to-float v2, v4

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    int-to-float v0, v0

    .line 47
    int-to-float v2, v5

    .line 48
    :goto_2f
    div-float/2addr v0, v2

    .line 49
    if-eqz p5, :cond_35

    .line 51
    int-to-float v1, v3

    .line 52
    int-to-float v2, v4

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    int-to-float v1, v1

    .line 55
    int-to-float v2, v5

    .line 56
    :goto_37
    div-float/2addr v1, v2

    .line 57
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 59
    invoke-virtual {v2, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    .line 62
    move-result v2

    .line 63
    invoke-direct {p0, p2, p4, v2}, Lmiuix/internal/util/ViewDragHelper;->computeAxisDuration(III)I

    .line 66
    move-result p2

    .line 67
    iget-object p4, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 69
    invoke-virtual {p4, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 72
    move-result p1

    .line 73
    invoke-direct {p0, p3, p5, p1}, Lmiuix/internal/util/ViewDragHelper;->computeAxisDuration(III)I

    .line 76
    move-result p1

    .line 77
    int-to-float p2, p2

    .line 78
    mul-float/2addr p2, v0

    .line 79
    int-to-float p1, p1

    .line 80
    mul-float/2addr p1, v1

    .line 81
    add-float/2addr p1, p2

    .line 82
    float-to-int p1, p1

    .line 83
    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;
    .registers 4

    .line 2
    invoke-static {p0, p2}, Lmiuix/internal/util/ViewDragHelper;->create(Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object p0

    .line 3
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

    .line 1
    new-instance v0, Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lmiuix/internal/util/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lmiuix/internal/util/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 4
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 6
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 8
    invoke-virtual {v1, v2, p1, p2}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 14
    iget p2, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 16
    if-ne p2, v0, :cond_14

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 21
    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6

    .line 1
    const/high16 v0, 0x3f000000  # 0.5f

    .line 3
    sub-float/2addr p1, v0

    .line 4
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x3fde28c7460698c7L  # 0.4712389167638204

    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-float p1, v0

    .line 12
    float-to-double v0, p1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 16
    move-result-wide v0

    .line 17
    double-to-float p1, v0

    .line 18
    return p1
.end method

.method private dragTo(IIII)V
    .registers 15

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 12
    move-result v1

    .line 13
    if-eqz p3, :cond_1d

    .line 15
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 17
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 19
    invoke-virtual {v2, v3, p1, p3}, Lmiuix/internal/util/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    .line 22
    move-result p1

    .line 23
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 25
    sub-int v3, p1, v0

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 30
    :cond_1d
    move v6, p1

    .line 31
    if-eqz p4, :cond_2f

    .line 33
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 35
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 37
    invoke-virtual {p1, v2, p2, p4}, Lmiuix/internal/util/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    .line 40
    move-result p2

    .line 41
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 43
    sub-int v2, p2, v1

    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 48
    :cond_2f
    move v7, p2

    .line 49
    if-nez p3, :cond_34

    .line 51
    if-eqz p4, :cond_3f

    .line 53
    :cond_34
    sub-int v8, v6, v0

    .line 55
    sub-int v9, v7, v1

    .line 57
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 59
    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 61
    invoke-virtual/range {v4 .. v9}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 64
    :cond_3f
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    .line 3
    if-eqz v0, :cond_7

    .line 5
    array-length v1, v0

    .line 6
    if-gt v1, p1, :cond_50

    .line 8
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 10
    new-array v1, p1, [F

    .line 12
    new-array v2, p1, [F

    .line 14
    new-array v3, p1, [F

    .line 16
    new-array v4, p1, [F

    .line 18
    new-array v5, p1, [I

    .line 20
    new-array v6, p1, [I

    .line 22
    new-array p1, p1, [I

    .line 24
    if-eqz v0, :cond_42

    .line 26
    array-length v7, v0

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    .line 33
    array-length v7, v0

    .line 34
    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    .line 39
    array-length v7, v0

    .line 40
    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    .line 45
    array-length v7, v0

    .line 46
    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 51
    array-length v7, v0

    .line 52
    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 57
    array-length v7, v0

    .line 58
    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 63
    array-length v7, v0

    .line 64
    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :cond_42
    iput-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    .line 69
    iput-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    .line 71
    iput-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    .line 73
    iput-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    .line 75
    iput-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 77
    iput-object v6, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 79
    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 81
    :cond_50
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 15

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 12
    move-result v3

    .line 13
    sub-int/2addr p1, v2

    .line 14
    sub-int/2addr p2, v3

    .line 15
    if-nez p1, :cond_1c

    .line 17
    if-nez p2, :cond_1c

    .line 19
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 21
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 28
    return p1

    .line 29
    :cond_1c
    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 31
    move-object v4, p0

    .line 32
    move v6, p1

    .line 33
    move v7, p2

    .line 34
    move v8, p3

    .line 35
    move v9, p4

    .line 36
    invoke-direct/range {v4 .. v9}, Lmiuix/internal/util/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    .line 39
    move-result v6

    .line 40
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 42
    move v4, p1

    .line 43
    move v5, p2

    .line 44
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 47
    const/4 p1, 0x2

    .line 48
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 51
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method private getEdgesTouched(II)I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    if-ge p1, v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    .line 23
    add-int/2addr v1, v2

    .line 24
    if-ge p2, v1, :cond_1b

    .line 26
    or-int/lit8 v0, v0, 0x4

    .line 28
    :cond_1b
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 33
    move-result v1

    .line 34
    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    .line 36
    sub-int/2addr v1, v2

    .line 37
    if-le p1, v1, :cond_28

    .line 39
    or-int/lit8 v0, v0, 0x2

    .line 41
    :cond_28
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 46
    move-result p1

    .line 47
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    .line 49
    sub-int/2addr p1, v1

    .line 50
    if-le p2, p1, :cond_35

    .line 52
    or-int/lit8 v0, v0, 0x8

    .line 54
    :cond_35
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->isPointerDown(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_23

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "Ignoring pointerId="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "ViewDragHelper"

    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_23
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    .line 5
    const/16 v2, 0x3e8

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 10
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 20
    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    .line 22
    invoke-direct {p0, v0, v1, v2}, Lmiuix/internal/util/ViewDragHelper;->clampMag(FFF)F

    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 33
    move-result v1

    .line 34
    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 36
    iget v3, p0, Lmiuix/internal/util/ViewDragHelper;->mMaxVelocity:F

    .line 38
    invoke-direct {p0, v1, v2, v3}, Lmiuix/internal/util/ViewDragHelper;->clampMag(FFF)F

    .line 41
    move-result v1

    .line 42
    invoke-direct {p0, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 45
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {p0, p2, p1, p3, v1}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 13
    or-int/lit8 v0, v0, 0x4

    .line 15
    :cond_e
    const/4 v1, 0x2

    .line 16
    invoke-direct {p0, p1, p2, p3, v1}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_17

    .line 22
    or-int/lit8 v0, v0, 0x2

    .line 24
    :cond_17
    const/16 v1, 0x8

    .line 26
    invoke-direct {p0, p2, p1, p3, v1}, Lmiuix/internal/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_21

    .line 32
    or-int/lit8 v0, v0, 0x8

    .line 34
    :cond_21
    if-eqz v0, :cond_2f

    .line 36
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 38
    aget p2, p1, p3

    .line 40
    or-int/2addr p2, v0

    .line 41
    aput p2, p1, p3

    .line 43
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 45
    invoke-virtual {p1, v0, p3}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 48
    :cond_2f
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lmiuix/internal/util/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 4
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    .line 6
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    .line 8
    aput p1, v1, p3

    .line 10
    aput p1, v0, p3

    .line 12
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    .line 14
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    .line 16
    aput p2, v1, p3

    .line 18
    aput p2, v0, p3

    .line 20
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 22
    float-to-int p1, p1

    .line 23
    float-to-int p2, p2

    .line 24
    invoke-direct {p0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->getEdgesTouched(II)I

    .line 27
    move-result p1

    .line 28
    aput p1, v0, p3

    .line 30
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    .line 32
    const/4 p2, 0x1

    .line 33
    shl-int/2addr p2, p3

    .line 34
    or-int/2addr p1, p2

    .line 35
    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    .line 37
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_25

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 11
    move-result v2

    .line 12
    invoke-direct {p0, v2}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_12

    .line 18
    goto :goto_22

    .line 19
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    .line 29
    aput v3, v5, v2

    .line 31
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    .line 33
    aput v4, v3, v2

    .line 35
    :goto_22
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_5

    .line 38
    :cond_25
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 4
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_30

    .line 9
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 17
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 23
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 26
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 28
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 31
    move-result v5

    .line 32
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 34
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    .line 37
    move-result v6

    .line 38
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 40
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 42
    sub-int v7, v5, v0

    .line 44
    sub-int v8, v6, v1

    .line 46
    invoke-virtual/range {v3 .. v8}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 49
    :cond_30
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 53
    return-void
.end method

.method public canScroll(Landroid/view/View;ZIIII)Z
    .registers 20

    .line 1
    move-object v0, p1

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_55

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
    if-ltz v5, :cond_55

    .line 25
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v7

    .line 29
    add-int v6, p5, v3

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 34
    move-result v8

    .line 35
    if-lt v6, v8, :cond_52

    .line 37
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 40
    move-result v8

    .line 41
    if-ge v6, v8, :cond_52

    .line 43
    add-int v8, p6, v4

    .line 45
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 48
    move-result v9

    .line 49
    if-lt v8, v9, :cond_52

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 54
    move-result v9

    .line 55
    if-ge v8, v9, :cond_52

    .line 57
    const/4 v9, 0x1

    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 61
    move-result v10

    .line 62
    sub-int v11, v6, v10

    .line 64
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 67
    move-result v6

    .line 68
    sub-int v12, v8, v6

    .line 70
    move-object v6, p0

    .line 71
    move v8, v9

    .line 72
    move/from16 v9, p3

    .line 74
    move/from16 v10, p4

    .line 76
    invoke-virtual/range {v6 .. v12}, Lmiuix/internal/util/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_52

    .line 82
    return v2

    .line 83
    :cond_52
    add-int/lit8 v5, v5, -0x1

    .line 85
    goto :goto_16

    .line 86
    :cond_55
    if-eqz p2, :cond_6a

    .line 88
    move/from16 v1, p3

    .line 90
    neg-int v1, v1

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_6b

    .line 97
    move/from16 v1, p4

    .line 99
    neg-int v1, v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6a

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    const/4 v2, 0x0

    .line 108
    :cond_6b
    :goto_6b
    return v2
.end method

.method public cancel()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 4
    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper;->clearMotionHistory()V

    .line 7
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 17
    :cond_10
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 7
    if-ne v0, v1, :cond_16

    .line 9
    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 11
    iput p2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 13
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 15
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    .line 27
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p2

    .line 31
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ")"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    .line 6
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_12

    .line 7
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

    .line 8
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

    .line 9
    :goto_17
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 10
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

    .line 11
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

    .line 12
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

    .line 13
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

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_6f

    .line 7
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 12
    move-result v0

    .line 13
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 15
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 21
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    .line 24
    move-result v10

    .line 25
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 30
    move-result v4

    .line 31
    sub-int v8, v3, v4

    .line 33
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 38
    move-result v4

    .line 39
    sub-int v9, v10, v4

    .line 41
    if-eqz v8, :cond_2f

    .line 43
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 45
    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 48
    :cond_2f
    if-eqz v9, :cond_36

    .line 50
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 52
    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 55
    :cond_36
    if-nez v8, :cond_3a

    .line 57
    if-eqz v9, :cond_43

    .line 59
    :cond_3a
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 61
    iget-object v5, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 63
    move v6, v3

    .line 64
    move v7, v10

    .line 65
    invoke-virtual/range {v4 .. v9}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 68
    :cond_43
    if-eqz v0, :cond_60

    .line 70
    iget-object v4, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 72
    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    .line 75
    move-result v4

    .line 76
    if-ne v3, v4, :cond_60

    .line 78
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 80
    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    .line 83
    move-result v3

    .line 84
    if-ne v10, v3, :cond_60

    .line 86
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 88
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 91
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 93
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 96
    move-result v0

    .line 97
    :cond_60
    if-nez v0, :cond_6f

    .line 99
    if-eqz p1, :cond_6c

    .line 101
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 103
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 108
    goto :goto_6f

    .line 109
    :cond_6c
    invoke-virtual {p0, v1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 112
    :cond_6f
    :goto_6f
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 114
    if-ne p1, v2, :cond_74

    .line 116
    const/4 v1, 0x1

    .line 117
    :cond_74
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_32

    .line 11
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 13
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 15
    invoke-virtual {v2, v0}, Lmiuix/internal/util/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 26
    move-result v2

    .line 27
    if-lt p1, v2, :cond_2f

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 32
    move-result v2

    .line 33
    if-ge p1, v2, :cond_2f

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 38
    move-result v2

    .line 39
    if-lt p2, v2, :cond_2f

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 44
    move-result v2

    .line 45
    if-ge p2, v2, :cond_2f

    .line 47
    return-object v1

    .line 48
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_8

    .line 51
    :cond_32
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .registers 15

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 3
    if-eqz v0, :cond_30

    .line 5
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 7
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 12
    move-result v2

    .line 13
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 18
    move-result v3

    .line 19
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 21
    iget v4, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 23
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 26
    move-result v0

    .line 27
    float-to-int v4, v0

    .line 28
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 30
    iget v5, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 32
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 35
    move-result v0

    .line 36
    float-to-int v5, v0

    .line 37
    move v6, p1

    .line 38
    move v7, p3

    .line 39
    move v8, p2

    .line 40
    move v9, p4

    .line 41
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->setDragState(I)V

    .line 48
    return-void

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1
.end method

.method public getActivePointerId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 3
    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getEdgeSize()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mEdgeSize:I

    .line 3
    return v0
.end method

.method public getMinVelocity()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 3
    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mTouchSlop:I

    .line 3
    return v0
.end method

.method public getViewDragState()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 3
    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isEdgeTouched(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_12

    .line 2
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

    .line 3
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

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mPointersDown:I

    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 6
    and-int/2addr p1, v0

    .line 7
    if-eqz p1, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    :goto_a
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 5

    .line 1
    if-eqz p1, :cond_1c

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v0

    .line 7
    if-lt p2, v0, :cond_1c

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 12
    move-result v0

    .line 13
    if-ge p2, v0, :cond_1c

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 18
    move-result p2

    .line 19
    if-lt p3, p2, :cond_1c

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 24
    move-result p1

    .line 25
    if-ge p3, p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_d

    .line 11
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 14
    :cond_d
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    if-nez v2, :cond_17

    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 24
    :cond_17
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_159

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v0, v3, :cond_14e

    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v0, v4, :cond_bf

    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq v0, v4, :cond_b2

    .line 41
    const/4 v4, 0x5

    .line 42
    if-eq v0, v4, :cond_75

    .line 44
    const/4 v4, 0x6

    .line 45
    if-eq v0, v4, :cond_30

    .line 47
    goto/16 :goto_181

    .line 49
    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    move-result v0

    .line 53
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 55
    if-ne v1, v3, :cond_70

    .line 57
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 59
    if-ne v0, v1, :cond_70

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 64
    move-result v1

    .line 65
    :goto_40
    const/4 v3, -0x1

    .line 66
    if-ge v2, v1, :cond_6a

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    move-result v4

    .line 72
    iget v5, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 74
    if-ne v4, v5, :cond_4c

    .line 76
    goto :goto_67

    .line 77
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 80
    move-result v5

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    move-result v6

    .line 85
    float-to-int v5, v5

    .line 86
    float-to-int v6, v6

    .line 87
    invoke-virtual {p0, v5, v6}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 90
    move-result-object v5

    .line 91
    iget-object v6, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 93
    if-ne v5, v6, :cond_67

    .line 95
    invoke-virtual {p0, v6, v4}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_67

    .line 101
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 103
    goto :goto_6b

    .line 104
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    .line 106
    goto :goto_40

    .line 107
    :cond_6a
    move p1, v3

    .line 108
    :goto_6b
    if-ne p1, v3, :cond_70

    .line 110
    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper;->releaseViewForPointerUp()V

    .line 113
    :cond_70
    invoke-direct {p0, v0}, Lmiuix/internal/util/ViewDragHelper;->clearMotionHistory(I)V

    .line 116
    goto/16 :goto_181

    .line 118
    :cond_75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 125
    move-result v2

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 129
    move-result p1

    .line 130
    invoke-direct {p0, v2, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 133
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 135
    if-nez v1, :cond_a3

    .line 137
    float-to-int v1, v2

    .line 138
    float-to-int p1, p1

    .line 139
    invoke-virtual {p0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 146
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 148
    aget p1, p1, v0

    .line 150
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    .line 152
    and-int v2, p1, v1

    .line 154
    if-eqz v2, :cond_181

    .line 156
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 158
    and-int/2addr p1, v1

    .line 159
    invoke-virtual {v2, p1, v0}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 162
    goto/16 :goto_181

    .line 164
    :cond_a3
    float-to-int v1, v2

    .line 165
    float-to-int p1, p1

    .line 166
    invoke-virtual {p0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->isCapturedViewUnder(II)Z

    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_181

    .line 172
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 174
    invoke-virtual {p0, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 177
    goto/16 :goto_181

    .line 179
    :cond_b2
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 181
    if-ne p1, v3, :cond_ba

    .line 183
    const/4 p1, 0x0

    .line 184
    invoke-direct {p0, p1, p1}, Lmiuix/internal/util/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 187
    :cond_ba
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 190
    goto/16 :goto_181

    .line 192
    :cond_bf
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 194
    if-ne v0, v3, :cond_107

    .line 196
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 198
    invoke-direct {p0, v0}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_cd

    .line 204
    goto/16 :goto_181

    .line 206
    :cond_cd
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 211
    move-result v0

    .line 212
    if-ltz v0, :cond_181

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 217
    move-result v1

    .line 218
    if-ge v0, v1, :cond_181

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 223
    move-result v1

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 227
    move-result v0

    .line 228
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionX:[F

    .line 230
    iget v3, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 232
    aget v2, v2, v3

    .line 234
    sub-float/2addr v1, v2

    .line 235
    float-to-int v1, v1

    .line 236
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mLastMotionY:[F

    .line 238
    aget v2, v2, v3

    .line 240
    sub-float/2addr v0, v2

    .line 241
    float-to-int v0, v0

    .line 242
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 247
    move-result v2

    .line 248
    add-int/2addr v2, v1

    .line 249
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 254
    move-result v3

    .line 255
    add-int/2addr v3, v0

    .line 256
    invoke-direct {p0, v2, v3, v1, v0}, Lmiuix/internal/util/ViewDragHelper;->dragTo(IIII)V

    .line 259
    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 262
    goto/16 :goto_181

    .line 264
    :cond_107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 267
    move-result v0

    .line 268
    :goto_10b
    if-ge v2, v0, :cond_14a

    .line 270
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 273
    move-result v1

    .line 274
    invoke-direct {p0, v1}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    .line 277
    move-result v4

    .line 278
    if-nez v4, :cond_118

    .line 280
    goto :goto_147

    .line 281
    :cond_118
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 284
    move-result v4

    .line 285
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 288
    move-result v5

    .line 289
    iget-object v6, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    .line 291
    aget v6, v6, v1

    .line 293
    sub-float v6, v4, v6

    .line 295
    iget-object v7, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    .line 297
    aget v7, v7, v1

    .line 299
    sub-float v7, v5, v7

    .line 301
    invoke-direct {p0, v6, v7, v1}, Lmiuix/internal/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 304
    iget v8, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 306
    if-ne v8, v3, :cond_134

    .line 308
    goto :goto_14a

    .line 309
    :cond_134
    float-to-int v4, v4

    .line 310
    float-to-int v5, v5

    .line 311
    invoke-virtual {p0, v4, v5}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 314
    move-result-object v4

    .line 315
    invoke-direct {p0, v4, v6, v7}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_147

    .line 321
    invoke-virtual {p0, v4, v1}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_147

    .line 327
    goto :goto_14a

    .line 328
    :cond_147
    :goto_147
    add-int/lit8 v2, v2, 0x1

    .line 330
    goto :goto_10b

    .line 331
    :cond_14a
    :goto_14a
    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 334
    goto :goto_181

    .line 335
    :cond_14e
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 337
    if-ne p1, v3, :cond_155

    .line 339
    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper;->releaseViewForPointerUp()V

    .line 342
    :cond_155
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 345
    goto :goto_181

    .line 346
    :cond_159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 349
    move-result v0

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 353
    move-result v1

    .line 354
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 357
    move-result p1

    .line 358
    float-to-int v2, v0

    .line 359
    float-to-int v3, v1

    .line 360
    invoke-virtual {p0, v2, v3}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 363
    move-result-object v2

    .line 364
    invoke-direct {p0, v0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 367
    invoke-virtual {p0, v2, p1}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 370
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 372
    aget v0, v0, p1

    .line 374
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    .line 376
    and-int v2, v0, v1

    .line 378
    if-eqz v2, :cond_181

    .line 380
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 382
    and-int/2addr v0, v1

    .line 383
    invoke-virtual {v2, v0, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 386
    :cond_181
    :goto_181
    return-void
.end method

.method public setDragState(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 7
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 12
    if-nez p1, :cond_10

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 17
    :cond_10
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    .line 3
    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mMinVelocity:F

    .line 3
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    iget v2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_d

    .line 11
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 14
    :cond_d
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    if-nez v2, :cond_17

    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 24
    :cond_17
    iget-object v2, p0, Lmiuix/internal/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v0, :cond_bd

    .line 34
    if-eq v0, v4, :cond_b9

    .line 36
    if-eq v0, v3, :cond_6f

    .line 38
    const/4 v5, 0x3

    .line 39
    if-eq v0, v5, :cond_b9

    .line 41
    const/4 v5, 0x5

    .line 42
    if-eq v0, v5, :cond_39

    .line 44
    const/4 v3, 0x6

    .line 45
    if-eq v0, v3, :cond_30

    .line 47
    goto/16 :goto_ed

    .line 49
    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    move-result p1

    .line 53
    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->clearMotionHistory(I)V

    .line 56
    goto/16 :goto_ed

    .line 58
    :cond_39
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    move-result v5

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 69
    move-result p1

    .line 70
    invoke-direct {p0, v5, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 73
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 75
    if-nez v1, :cond_5e

    .line 77
    iget-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 79
    aget p1, p1, v0

    .line 81
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    .line 83
    and-int v3, p1, v1

    .line 85
    if-eqz v3, :cond_ed

    .line 87
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 89
    and-int/2addr p1, v1

    .line 90
    invoke-virtual {v3, p1, v0}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 93
    goto/16 :goto_ed

    .line 95
    :cond_5e
    if-ne v1, v3, :cond_ed

    .line 97
    float-to-int v1, v5

    .line 98
    float-to-int p1, p1

    .line 99
    invoke-virtual {p0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 102
    move-result-object p1

    .line 103
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 105
    if-ne p1, v1, :cond_ed

    .line 107
    invoke-virtual {p0, p1, v0}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 110
    goto/16 :goto_ed

    .line 112
    :cond_6f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 115
    move-result v0

    .line 116
    move v1, v2

    .line 117
    :goto_74
    if-ge v1, v0, :cond_b5

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 122
    move-result v3

    .line 123
    invoke-direct {p0, v3}, Lmiuix/internal/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_81

    .line 129
    goto :goto_b2

    .line 130
    :cond_81
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 133
    move-result v5

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 137
    move-result v6

    .line 138
    iget-object v7, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionX:[F

    .line 140
    aget v7, v7, v3

    .line 142
    sub-float v7, v5, v7

    .line 144
    iget-object v8, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialMotionY:[F

    .line 146
    aget v8, v8, v3

    .line 148
    sub-float v8, v6, v8

    .line 150
    invoke-direct {p0, v7, v8, v3}, Lmiuix/internal/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 153
    iget v9, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 155
    if-ne v9, v4, :cond_9d

    .line 157
    goto :goto_b5

    .line 158
    :cond_9d
    float-to-int v5, v5

    .line 159
    float-to-int v6, v6

    .line 160
    invoke-virtual {p0, v5, v6}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 163
    move-result-object v5

    .line 164
    if-eqz v5, :cond_b2

    .line 166
    invoke-direct {p0, v5, v7, v8}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_b2

    .line 172
    invoke-virtual {p0, v5, v3}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_b2

    .line 178
    goto :goto_b5

    .line 179
    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    .line 181
    goto :goto_74

    .line 182
    :cond_b5
    :goto_b5
    invoke-direct {p0, p1}, Lmiuix/internal/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 185
    goto :goto_ed

    .line 186
    :cond_b9
    invoke-virtual {p0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 189
    goto :goto_ed

    .line 190
    :cond_bd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 193
    move-result v0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 197
    move-result v1

    .line 198
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 201
    move-result p1

    .line 202
    invoke-direct {p0, v0, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 205
    float-to-int v0, v0

    .line 206
    float-to-int v1, v1

    .line 207
    invoke-virtual {p0, v0, v1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 210
    move-result-object v0

    .line 211
    iget-object v1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 213
    if-ne v0, v1, :cond_dd

    .line 215
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 217
    if-ne v1, v3, :cond_dd

    .line 219
    invoke-virtual {p0, v0, p1}, Lmiuix/internal/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 222
    :cond_dd
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 224
    aget v0, v0, p1

    .line 226
    iget v1, p0, Lmiuix/internal/util/ViewDragHelper;->mTrackingEdges:I

    .line 228
    and-int v3, v0, v1

    .line 230
    if-eqz v3, :cond_ed

    .line 232
    iget-object v3, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 234
    and-int/2addr v0, v1

    .line 235
    invoke-virtual {v3, v0, p1}, Lmiuix/internal/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 238
    :cond_ed
    :goto_ed
    iget p1, p0, Lmiuix/internal/util/ViewDragHelper;->mDragState:I

    .line 240
    if-ne p1, v4, :cond_f2

    .line 242
    move v2, v4

    .line 243
    :cond_f2
    return v2
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p2, p3, p1, p1}, Lmiuix/internal/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_a

    .line 6
    iget v0, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 8
    if-ne v0, p2, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    if-eqz p1, :cond_1a

    .line 13
    iget-object v0, p0, Lmiuix/internal/util/ViewDragHelper;->mCallback:Lmiuix/internal/util/ViewDragHelper$Callback;

    .line 15
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/util/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    iput p2, p0, Lmiuix/internal/util/ViewDragHelper;->mActivePointerId:I

    .line 23
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 26
    return v1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method
