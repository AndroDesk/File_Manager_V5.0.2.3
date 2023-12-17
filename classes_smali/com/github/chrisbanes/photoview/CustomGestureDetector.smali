.class Lcom/github/chrisbanes/photoview/CustomGestureDetector;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"


# static fields
.field private static final INVALID_POINTER_ID:I


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

.field private final mMinimumVelocity:F

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->INVALID_POINTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/OnGestureListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mMinimumVelocity:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mTouchSlop:F

    iput-object p2, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    new-instance p2, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;

    invoke-direct {p2, p0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;-><init>(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static synthetic access$000(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)Lcom/github/chrisbanes/photoview/OnGestureListener;
    .registers 1

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    return-object p0
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .registers 3

    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .registers 3

    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e3

    const/4 v4, 0x0

    if-eq v0, v2, :cond_8e

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_42

    const/4 v4, 0x6

    if-eq v0, v4, :cond_19

    goto/16 :goto_102

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/Util;->getPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    if-ne v4, v5, :cond_102

    if-nez v0, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    goto/16 :goto_102

    :cond_42
    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_102

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_102

    :cond_4f
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v4

    iget v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    sub-float v6, v4, v6

    iget-boolean v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    if-nez v7, :cond_79

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mTouchSlop:F

    float-to-double v9, v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_76

    move v7, v2

    goto :goto_77

    :cond_76
    move v7, v3

    :goto_77
    iput-boolean v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    :cond_79
    iget-boolean v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    if-eqz v7, :cond_102

    iget-object v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    invoke-interface {v7, v5, v6}, Lcom/github/chrisbanes/photoview/OnGestureListener;->onDrag(FF)V

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    iput v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_102

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_102

    :cond_8e
    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d9

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d9

    iget-object v6, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    iget v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    iget v8, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    neg-float v0, v0

    neg-float v5, v5

    invoke-interface {v6, v7, v8, v0, v5}, Lcom/github/chrisbanes/photoview/OnGestureListener;->onFling(FFFF)V

    :cond_d9
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_102

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_102

    :cond_e3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f4

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_f4
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    iput-boolean v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    :cond_102
    :goto_102
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    if-eq v0, v1, :cond_107

    move v3, v0

    :cond_107
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    iput p1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    return v2
.end method


# virtual methods
.method public isDragging()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .registers 2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    :catch_a
    const/4 p1, 0x1

    return p1
.end method
