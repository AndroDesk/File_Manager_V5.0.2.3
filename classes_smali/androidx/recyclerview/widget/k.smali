.class public Landroidx/recyclerview/widget/k;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I

.field public static final SNAP_TO_END:I

.field public static final SNAP_TO_START:I

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/recyclerview/widget/k;->SNAP_TO_ANY:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/recyclerview/widget/k;->SNAP_TO_END:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/recyclerview/widget/k;->SNAP_TO_START:I

    const v0, 0x90a86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/recyclerview/widget/k;->TARGET_SEEK_SCROLL_DISTANCE_PX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->mHasCalculatedMillisPerPixel:Z

    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->mDisplayMetrics:Landroid/util/DisplayMetrics;

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

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k;->mHasCalculatedMillisPerPixel:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/k;->mMillisPerPixel:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->mHasCalculatedMillisPerPixel:Z

    :cond_f
    iget v0, p0, Landroidx/recyclerview/widget/k;->mMillisPerPixel:F

    return v0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 7

    const/4 v0, -0x1

    if-eq p5, v0, :cond_1c

    if-eqz p5, :cond_12

    const/4 p1, 0x1

    if-ne p5, p1, :cond_a

    sub-int/2addr p4, p2

    return p4

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    sub-int/2addr p3, p1

    if-lez p3, :cond_16

    return p3

    :cond_16
    sub-int/2addr p4, p2

    if-gez p4, :cond_1a

    return p4

    :cond_1a
    const/4 p1, 0x0

    return p1

    :cond_1c
    sub-int/2addr p3, p1

    return p3
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/k;->calculateDtToFit(IIIII)I

    move-result p1

    return p1

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return p1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/k;->calculateDtToFit(IIIII)I

    move-result p1

    return p1

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return p1
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000  # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public calculateTimeForDeceleration(I)I
    .registers 6

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL  # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public calculateTimeForScrolling(I)I
    .registers 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Landroidx/recyclerview/widget/k;->getSpeedPerPixel()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public getHorizontalSnapPreference()I
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_14

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_c

    goto :goto_14

    :cond_c
    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_15

    :cond_12
    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getVerticalSnapPreference()I
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_14

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_c

    goto :goto_14

    :cond_c
    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_15

    :cond_12
    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getChildCount()I

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    return-void

    :cond_a
    iget p3, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/k;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    iget p1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/k;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    iget p2, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    if-nez p2, :cond_23

    if-nez p1, :cond_23

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/k;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/k;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v1, v0

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_30

    neg-int p2, p2

    neg-int p1, p1

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput p2, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    iput v0, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    iput-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    :cond_30
    return-void
.end method

.method public updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_50

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_50

    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->normalize(Landroid/graphics/PointF;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000  # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/k;->calculateTimeForScrolling(I)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a  # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/k;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    iput v3, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    return-void

    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    move-result v0

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    return-void
.end method
