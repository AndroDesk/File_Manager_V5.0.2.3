.class Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private animationStartLeft:I

.field private animationStartRight:I

.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field public indicatorAnimator:Landroid/animation/ValueAnimator;

.field public indicatorLeft:I

.field public indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field public selectedPosition:I

.field public selectionOffset:F

.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->layoutDirection:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorRight:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animationStartRight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animationStartRight:I

    return p0
.end method

.method private calculateTabViewContentBounds(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/graphics/RectF;)V
    .registers 6

    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$1400(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    if-ge v0, v1, :cond_12

    move v0, v1

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, v0

    add-int/2addr p1, v0

    int-to-float v0, v1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 8

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_95

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-boolean v4, v3, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v4, :cond_3b

    instance-of v4, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    if-eqz v4, :cond_3b

    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    invoke-static {v3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_3b
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_97

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_97

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-boolean v6, v5, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v6, :cond_81

    instance-of v6, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    if-eqz v6, :cond_81

    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    invoke-static {v5}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    :cond_81
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v6, v5, v0

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    float-to-int v1, v6

    int-to-float v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v5, v0

    int-to-float v0, v2

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    float-to-int v2, v5

    goto :goto_97

    :cond_95
    const/4 v1, -0x1

    move v2, v1

    :cond_97
    :goto_97
    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .registers 9

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-boolean v4, v3, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v4, :cond_37

    instance-of v4, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    if-eqz v4, :cond_37

    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    invoke-static {v3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_37
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-ne v0, v1, :cond_40

    if-ne v3, v2, :cond_40

    return-void

    :cond_40
    if-eqz p1, :cond_46

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    iput v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animationStartRight:I

    :cond_46
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;II)V

    if-eqz p1, :cond_75

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_80

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$2;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$2;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7f

    :cond_75
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_7f
    return-void

    :array_80
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public animateIndicatorToPosition(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void
.end method

.method public childrenNeedLayout()Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-object v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iget v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v2, :cond_12

    move v0, v2

    :cond_12
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget v2, v2, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorGravity:I

    if-eqz v2, :cond_36

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_28

    if-eq v2, v4, :cond_3f

    const/4 v0, 0x3

    if-eq v2, v0, :cond_23

    move v0, v1

    goto :goto_3f

    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_3f

    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_3f

    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_3f
    :goto_3f
    iget v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v2, :cond_69

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-le v3, v2, :cond_69

    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-object v2, v2, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4e

    goto :goto_50

    :cond_4e
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    :goto_50
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Lg0/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    :cond_66
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_69
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIndicatorPosition()F
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    iget p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    goto :goto_18

    :cond_15
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    :goto_18
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget v1, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    iget v0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    if-ne v0, v2, :cond_7c

    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    :goto_1f
    if-ge v4, v0, :cond_36

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_33

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_36
    if-gtz v5, :cond_39

    return-void

    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    mul-int v6, v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v4, v2

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_70

    move v2, v1

    :goto_4f
    if-ge v1, v0, :cond_6e

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v5, :cond_66

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6b

    :cond_66
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v2, v3

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_6e
    move v3, v2

    goto :goto_77

    :cond_70
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iput v1, v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateTabViews(Z)V

    :goto_77
    if-eqz v3, :cond_7c

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public setIndicatorPosition(II)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_11

    :cond_8
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iput p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorRight:I

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method public setIndicatorPositionFromTabPosition(IF)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedPosition:I

    iput p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectionOffset:F

    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method public setSelectedIndicatorHeight(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_b

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    :cond_b
    return-void
.end method