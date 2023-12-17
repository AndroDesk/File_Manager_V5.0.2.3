.class public Landroidx/recyclerview/widget/k;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCalculatedMillisPerPixel:Z

.field public mInterimTargetDx:I

.field public mInterimTargetDy:I

.field public final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mMillisPerPixel:F

.field public mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>()V

    .line 4
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 6
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 11
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 13
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->mHasCalculatedMillisPerPixel:Z

    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 23
    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 35
    return-void
.end method

.method private clampApplyScroll(II)I
    .registers 3

    sub-int p2, p1, p2

    mul-int/2addr p1, p2

    if-gtz p1, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    return p2
.end method

.method private getSpeedPerPixel()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->mHasCalculatedMillisPerPixel:Z

    .line 3
    if-nez v0, :cond_f

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroidx/recyclerview/widget/k;->mMillisPerPixel:F

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->mHasCalculatedMillisPerPixel:Z

    .line 16
    :cond_f
    iget v0, p0, Landroidx/recyclerview/widget/k;->mMillisPerPixel:F

    .line 18
    return v0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p5, v0, :cond_1c

    .line 4
    if-eqz p5, :cond_12

    .line 6
    const/4 p1, 0x1

    .line 7
    if-ne p5, p1, :cond_a

    .line 9
    sub-int/2addr p4, p2

    .line 10
    return p4

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_12
    sub-int/2addr p3, p1

    .line 20
    if-lez p3, :cond_16

    .line 22
    return p3

    .line 23
    :cond_16
    sub-int/2addr p4, p2

    .line 24
    if-gez p4, :cond_1a

    .line 26
    return p4

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_1c
    sub-int/2addr p3, p1

    .line 30
    return p3
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_38

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 23
    move-result v2

    .line 24
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    sub-int v5, v2, v3

    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 31
    move-result p1

    .line 32
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 34
    add-int v6, p1, v1

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 39
    move-result v7

    .line 40
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 47
    move-result v0

    .line 48
    sub-int v8, p1, v0

    .line 50
    move-object v4, p0

    .line 51
    move v9, p2

    .line 52
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/k;->calculateDtToFit(IIIII)I

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    :goto_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_38

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 23
    move-result v2

    .line 24
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    sub-int v5, v2, v3

    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 31
    move-result p1

    .line 32
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 34
    add-int v6, p1, v1

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 39
    move-result v7

    .line 40
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 47
    move-result v0

    .line 48
    sub-int v8, p1, v0

    .line 50
    move-object v4, p0

    .line 51
    move v9, p2

    .line 52
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/k;->calculateDtToFit(IIIII)I

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    :goto_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 v0, 0x41c80000  # 25.0f

    .line 6
    div-float/2addr v0, p1

    .line 7
    return v0
.end method

.method public calculateTimeForDeceleration(I)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->calculateTimeForScrolling(I)I

    .line 4
    move-result p1

    .line 5
    int-to-double v0, p1

    .line 6
    const-wide v2, 0x3fd57a786c22680aL  # 0.3356

    .line 11
    div-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 15
    move-result-wide v0

    .line 16
    double-to-int p1, v0

    .line 17
    return p1
.end method

.method public calculateTimeForScrolling(I)I
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getSpeedPerPixel()F

    .line 9
    move-result v0

    .line 10
    mul-float/2addr p1, v0

    .line 11
    float-to-double v0, p1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 15
    move-result-wide v0

    .line 16
    double-to-int p1, v0

    .line 17
    return p1
.end method

.method public getHorizontalSnapPreference()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v2, v0, v1

    .line 10
    if-nez v2, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    cmpl-float v0, v0, v1

    .line 15
    if-lez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    const/4 v0, -0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public getVerticalSnapPreference()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v2, v0, v1

    .line 10
    if-nez v2, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    cmpl-float v0, v0, v1

    .line 15
    if-lez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    const/4 v0, -0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getChildCount()I

    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_a

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 10
    return-void

    .line 11
    :cond_a
    iget p3, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 13
    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/k;->clampApplyScroll(II)I

    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 19
    iget p1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/k;->clampApplyScroll(II)I

    .line 24
    move-result p1

    .line 25
    iput p1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 27
    iget p2, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 29
    if-nez p2, :cond_23

    .line 31
    if-nez p1, :cond_23

    .line 33
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/k;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    .line 36
    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    .line 9
    return-void
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->getHorizontalSnapPreference()I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k;->calculateDxToMakeVisible(Landroid/view/View;I)I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->getVerticalSnapPreference()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/k;->calculateDyToMakeVisible(Landroid/view/View;I)I

    .line 16
    move-result p1

    .line 17
    mul-int v0, p2, p2

    .line 19
    mul-int v1, p1, p1

    .line 21
    add-int/2addr v1, v0

    .line 22
    int-to-double v0, v1

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    move-result-wide v0

    .line 27
    double-to-int v0, v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->calculateTimeForDeceleration(I)I

    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_30

    .line 34
    neg-int p2, p2

    .line 35
    neg-int p1, p1

    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 38
    iput p2, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    .line 40
    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    .line 42
    iput v0, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    .line 44
    iput-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 49
    :cond_30
    return-void
.end method

.method public updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_50

    .line 11
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v1, v1, v2

    .line 16
    if-nez v1, :cond_18

    .line 18
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 20
    cmpl-float v1, v1, v2

    .line 22
    if-nez v1, :cond_18

    .line 24
    goto :goto_50

    .line 25
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->normalize(Landroid/graphics/PointF;)V

    .line 28
    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    .line 30
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 32
    const v2, 0x461c4000  # 10000.0f

    .line 35
    mul-float/2addr v1, v2

    .line 36
    float-to-int v1, v1

    .line 37
    iput v1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 39
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 41
    mul-float/2addr v0, v2

    .line 42
    float-to-int v0, v0

    .line 43
    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 45
    const/16 v0, 0x2710

    .line 47
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->calculateTimeForScrolling(I)I

    .line 50
    move-result v0

    .line 51
    iget v1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 53
    int-to-float v1, v1

    .line 54
    const v2, 0x3f99999a  # 1.2f

    .line 57
    mul-float/2addr v1, v2

    .line 58
    float-to-int v1, v1

    .line 59
    iget v3, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 61
    int-to-float v3, v3

    .line 62
    mul-float/2addr v3, v2

    .line 63
    float-to-int v3, v3

    .line 64
    int-to-float v0, v0

    .line 65
    mul-float/2addr v0, v2

    .line 66
    float-to-int v0, v0

    .line 67
    iget-object v2, p0, Landroidx/recyclerview/widget/k;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 69
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    .line 71
    iput v3, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    .line 73
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    .line 75
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    .line 77
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 80
    return-void

    .line 81
    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    .line 84
    move-result v0

    .line 85
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 90
    return-void
.end method
