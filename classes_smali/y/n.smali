.class public final Ly/n;
.super Landroidx/constraintlayout/widget/b;
.source "MotionHelper.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$g;


# instance fields
.field public i:F

.field public j:[Landroid/view/View;


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public getProgress()F
    .registers 2

    .line 1
    iget v0, p0, Ly/n;->i:F

    .line 3
    return v0
.end method

.method public final j()V
    .registers 1

    return-void
.end method

.method public setProgress(F)V
    .registers 6

    .line 1
    iput p1, p0, Ly/n;->i:F

    .line 3
    iget p1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p1, :cond_3f

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    array-length v1, v1

    .line 19
    iget v2, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 21
    if-eq v1, v2, :cond_1c

    .line 23
    :cond_16
    iget v1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 25
    new-array v1, v1, [Landroid/view/View;

    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    .line 29
    :cond_1c
    move v1, v0

    .line 30
    :goto_1d
    iget v2, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 32
    if-ge v1, v2, :cond_30

    .line 34
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->a:[I

    .line 36
    aget v2, v2, v1

    .line 38
    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    .line 40
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 43
    move-result-object v2

    .line 44
    aput-object v2, v3, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_1d

    .line 49
    :cond_30
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    .line 51
    iput-object p1, p0, Ly/n;->j:[Landroid/view/View;

    .line 53
    :goto_34
    iget p1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 55
    if-ge v0, p1, :cond_54

    .line 57
    iget-object p1, p0, Ly/n;->j:[Landroid/view/View;

    .line 59
    aget-object p1, p1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_34

    .line 64
    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    move-result v1

    .line 74
    :goto_49
    if-ge v0, v1, :cond_54

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    move-result-object v2

    .line 80
    instance-of v2, v2, Ly/n;

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_49

    .line 85
    :cond_54
    return-void
.end method
