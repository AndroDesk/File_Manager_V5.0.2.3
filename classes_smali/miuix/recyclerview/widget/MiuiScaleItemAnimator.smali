.class public Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;
.super Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.source "MiuiScaleItemAnimator.java"


# static fields
.field private static final DEFAULT_SCALE:F = 0.8f

.field private static final SCALE_DIS:I = 0x14


# instance fields
.field private mScaleDist:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 4
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 6
    iput v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    .line 8
    return-void
.end method

.method private getFolmeScale(Landroidx/recyclerview/widget/RecyclerView$b0;)F
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    const/4 v0, 0x1

    .line 10
    const/high16 v1, 0x41a00000  # 20.0f

    .line 12
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    .line 28
    :cond_1b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v0

    .line 34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 39
    move-result p1

    .line 40
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    iget v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->mScaleDist:F

    .line 47
    sub-float v0, p1, v0

    .line 49
    div-float/2addr v0, p1

    .line 50
    const p1, 0x3f4ccccd  # 0.8f

    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 56
    move-result p1

    .line 57
    return p1
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->getFolmeScale(Landroidx/recyclerview/widget/RecyclerView$b0;)F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 14
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 19
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 24
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 17
    const/high16 v2, 0x3f800000  # 1.0f

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getAddDuration()J

    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;

    .line 41
    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;-><init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 51
    return-void
.end method

.method public animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, p1}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->getFolmeScale(Landroidx/recyclerview/widget/RecyclerView$b0;)F

    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->getRemoveDuration()J

    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;

    .line 44
    invoke-direct {v3, p0, p1, v1, v0}, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 54
    return-void
.end method
