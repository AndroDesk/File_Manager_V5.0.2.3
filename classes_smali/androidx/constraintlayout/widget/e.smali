.class public final Landroidx/constraintlayout/widget/e;
.super Landroid/view/View;
.source "Guideline.java"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/e;->a:Z

    .line 7
    const/16 p1, 0x8

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public final onMeasure(II)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    return-void
.end method

.method public setFilterRedundantCalls(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/e;->a:Z

    .line 3
    return-void
.end method

.method public setGuidelineBegin(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 7
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/e;->a:Z

    .line 9
    if-eqz v1, :cond_f

    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 13
    if-ne v1, p1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method

.method public setGuidelineEnd(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 7
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/e;->a:Z

    .line 9
    if-eqz v1, :cond_f

    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 13
    if-ne v1, p1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method

.method public setGuidelinePercent(F)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 7
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/e;->a:Z

    .line 9
    if-eqz v1, :cond_11

    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    .line 13
    cmpl-float v1, v1, p1

    .line 15
    if-nez v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    return-void
.end method
