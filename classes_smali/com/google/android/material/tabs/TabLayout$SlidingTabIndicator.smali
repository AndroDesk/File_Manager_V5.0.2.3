.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
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

.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 9
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 11
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 13
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 15
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 17
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animationStartRight:I

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    .line 25
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 32
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 37
    return-void
.end method

.method public static synthetic access$1200(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animationStartRight:I

    .line 3
    return p0
.end method

.method private calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$1400(Lcom/google/android/material/tabs/TabLayout$TabView;)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x18

    .line 11
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    if-ge v0, v1, :cond_12

    .line 18
    move v0, v1

    .line 19
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 26
    move-result p1

    .line 27
    add-int/2addr p1, v1

    .line 28
    div-int/lit8 p1, p1, 0x2

    .line 30
    div-int/lit8 v0, v0, 0x2

    .line 32
    sub-int v1, p1, v0

    .line 34
    add-int/2addr p1, v0

    .line 35
    int-to-float v0, v1

    .line 36
    int-to-float p1, p1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p2, v0, v1, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 41
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_95

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_95

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 25
    iget-boolean v4, v3, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 27
    if-nez v4, :cond_3b

    .line 29
    instance-of v4, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 31
    if-eqz v4, :cond_3b

    .line 33
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 35
    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 38
    move-result-object v1

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 44
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 47
    move-result-object v0

    .line 48
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 50
    float-to-int v1, v0

    .line 51
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 53
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 56
    move-result-object v0

    .line 57
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 59
    float-to-int v2, v0

    .line 60
    :cond_3b
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 62
    const/4 v3, 0x0

    .line 63
    cmpl-float v0, v0, v3

    .line 65
    if-lez v0, :cond_97

    .line 67
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    move-result v3

    .line 73
    add-int/lit8 v3, v3, -0x1

    .line 75
    if-ge v0, v3, :cond_97

    .line 77
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 88
    move-result v3

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 92
    move-result v4

    .line 93
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 95
    iget-boolean v6, v5, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 97
    if-nez v6, :cond_81

    .line 99
    instance-of v6, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 101
    if-eqz v6, :cond_81

    .line 103
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 105
    invoke-static {v5}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 108
    move-result-object v3

    .line 109
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 114
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 117
    move-result-object v0

    .line 118
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 120
    float-to-int v3, v0

    .line 121
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 123
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 126
    move-result-object v0

    .line 127
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 129
    float-to-int v4, v0

    .line 130
    :cond_81
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 132
    int-to-float v3, v3

    .line 133
    mul-float/2addr v3, v0

    .line 134
    const/high16 v5, 0x3f800000  # 1.0f

    .line 136
    sub-float v6, v5, v0

    .line 138
    int-to-float v1, v1

    .line 139
    mul-float/2addr v6, v1

    .line 140
    add-float/2addr v6, v3

    .line 141
    float-to-int v1, v6

    .line 142
    int-to-float v3, v4

    .line 143
    mul-float/2addr v3, v0

    .line 144
    sub-float/2addr v5, v0

    .line 145
    int-to-float v0, v2

    .line 146
    mul-float/2addr v5, v0

    .line 147
    add-float/2addr v5, v3

    .line 148
    float-to-int v2, v5

    .line 149
    goto :goto_97

    .line 150
    :cond_95
    const/4 v1, -0x1

    .line 151
    move v2, v1

    .line 152
    :cond_97
    :goto_97
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 155
    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .registers 9

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    iget-boolean v4, v3, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 23
    if-nez v4, :cond_37

    .line 25
    instance-of v4, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 27
    if-eqz v4, :cond_37

    .line 29
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 31
    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 40
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 43
    move-result-object v0

    .line 44
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 46
    float-to-int v1, v0

    .line 47
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 49
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    .line 52
    move-result-object v0

    .line 53
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 55
    float-to-int v2, v0

    .line 56
    :cond_37
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 58
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 60
    if-ne v0, v1, :cond_40

    .line 62
    if-ne v3, v2, :cond_40

    .line 64
    return-void

    .line 65
    :cond_40
    if-eqz p1, :cond_46

    .line 67
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 69
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animationStartRight:I

    .line 71
    :cond_46
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;

    .line 73
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;II)V

    .line 76
    if-eqz p1, :cond_75

    .line 78
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 80
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 85
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 87
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    int-to-long v1, p3

    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    const/4 p3, 0x2

    .line 95
    new-array p3, p3, [F

    .line 97
    fill-array-data p3, :array_80

    .line 100
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    new-instance p3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;

    .line 108
    invoke-direct {p3, p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V

    .line 111
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 117
    goto :goto_7f

    .line 118
    :cond_75
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 123
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 125
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    :goto_7f
    return-void

    .line 129
    :array_80
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public animateIndicatorToPosition(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    .line 20
    return-void
.end method

.method public childrenNeedLayout()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_17

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v3

    .line 17
    if-gtz v3, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_c

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 11
    move-result v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 16
    if-ltz v2, :cond_12

    .line 18
    move v0, v2

    .line 19
    :cond_12
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    .line 23
    if-eqz v2, :cond_36

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v2, v3, :cond_28

    .line 29
    if-eq v2, v4, :cond_3f

    .line 31
    const/4 v0, 0x3

    .line 32
    if-eq v2, v0, :cond_23

    .line 34
    move v0, v1

    .line 35
    goto :goto_3f

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    move-result v0

    .line 40
    goto :goto_3f

    .line 41
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 44
    move-result v1

    .line 45
    sub-int/2addr v1, v0

    .line 46
    div-int/2addr v1, v4

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v2

    .line 51
    add-int/2addr v2, v0

    .line 52
    div-int/lit8 v0, v2, 0x2

    .line 54
    goto :goto_3f

    .line 55
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v1

    .line 59
    sub-int/2addr v1, v0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v0

    .line 64
    :cond_3f
    :goto_3f
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 66
    if-ltz v2, :cond_69

    .line 68
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 70
    if-le v3, v2, :cond_69

    .line 72
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 74
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 76
    if-eqz v2, :cond_4e

    .line 78
    goto :goto_50

    .line 79
    :cond_4e
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 81
    :goto_50
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object v2

    .line 85
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 87
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 89
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 94
    if-eqz v0, :cond_66

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 99
    move-result v0

    .line 100
    invoke-static {v2, v0}, Lg0/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 103
    :cond_66
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    :cond_69
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method public getIndicatorPosition()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 6
    add-float/2addr v0, v1

    .line 7
    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 6
    if-eqz p1, :cond_15

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_15

    .line 14
    const/4 p1, 0x0

    .line 15
    iget p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 17
    const/4 p3, -0x1

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 25
    :goto_18
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result v0

    .line 8
    const/high16 v1, 0x40000000  # 2.0f

    .line 10
    if-eq v0, v1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 15
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v1, v3, :cond_18

    .line 21
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 23
    if-ne v0, v2, :cond_7c

    .line 25
    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v4, v1

    .line 31
    move v5, v4

    .line 32
    :goto_1f
    if-ge v4, v0, :cond_36

    .line 34
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_33

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    move-result v6

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result v5

    .line 52
    :cond_33
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_1f

    .line 55
    :cond_36
    if-gtz v5, :cond_39

    .line 57
    return-void

    .line 58
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v4

    .line 62
    const/16 v6, 0x10

    .line 64
    invoke-static {v4, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    .line 67
    move-result v4

    .line 68
    float-to-int v4, v4

    .line 69
    mul-int v6, v5, v0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 74
    move-result v7

    .line 75
    mul-int/2addr v4, v2

    .line 76
    sub-int/2addr v7, v4

    .line 77
    if-gt v6, v7, :cond_70

    .line 79
    move v2, v1

    .line 80
    :goto_4f
    if-ge v1, v0, :cond_6e

    .line 82
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 94
    const/4 v7, 0x0

    .line 95
    if-ne v6, v5, :cond_66

    .line 97
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 99
    cmpl-float v6, v6, v7

    .line 101
    if-eqz v6, :cond_6b

    .line 103
    :cond_66
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 107
    move v2, v3

    .line 108
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_4f

    .line 111
    :cond_6e
    move v3, v2

    .line 112
    goto :goto_77

    .line 113
    :cond_70
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 115
    iput v1, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 120
    :goto_77
    if-eqz v3, :cond_7c

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 125
    :cond_7c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 4
    return-void
.end method

.method public setIndicatorPosition(II)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 7
    if-eq p2, v0, :cond_11

    .line 9
    :cond_8
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 11
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 13
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 18
    :cond_11
    return-void
.end method

.method public setIndicatorPositionFromTabPosition(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_f
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 18
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 23
    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_12

    .line 9
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 19
    :cond_12
    return-void
.end method

.method public setSelectedIndicatorHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 3
    if-eq v0, p1, :cond_b

    .line 5
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 7
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 12
    :cond_b
    return-void
.end method
