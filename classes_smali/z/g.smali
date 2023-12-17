.class public abstract Lz/g;
.super Landroidx/constraintlayout/widget/b;
.source "VirtualLayout.java"


# virtual methods
.method public final h(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    return-void
.end method

.method public final j()V
    .registers 1

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/b;->onAttachedToWindow()V

    .line 4
    return-void
.end method

.method public setElevation(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_12

    .line 10
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 19
    :cond_12
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_12

    .line 10
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 19
    :cond_12
    return-void
.end method
