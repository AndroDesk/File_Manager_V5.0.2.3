.class public final Ly/n;
.super Landroidx/constraintlayout/widget/b;
.source "MotionHelper.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$g;


# instance fields
.field public i:F

.field public j:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


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

    iget v0, p0, Ly/n;->i:F

    return v0
.end method

.method public final j()V
    .registers 1

    return-void
.end method

.method public setProgress(F)V
    .registers 6

    iput p1, p0, Ly/n;->i:F

    iget p1, p0, Landroidx/constraintlayout/widget/b;->b:I

    const/4 v0, 0x0

    if-lez p1, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    if-eqz v1, :cond_16

    array-length v1, v1

    iget v2, p0, Landroidx/constraintlayout/widget/b;->b:I

    if-eq v1, v2, :cond_1c

    :cond_16
    iget v1, p0, Landroidx/constraintlayout/widget/b;->b:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    :cond_1c
    move v1, v0

    :goto_1d
    iget v2, p0, Landroidx/constraintlayout/widget/b;->b:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->a:[I

    aget v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_30
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->g:[Landroid/view/View;

    iput-object p1, p0, Ly/n;->j:[Landroid/view/View;

    :goto_34
    iget p1, p0, Landroidx/constraintlayout/widget/b;->b:I

    if-ge v0, p1, :cond_54

    iget-object p1, p0, Ly/n;->j:[Landroid/view/View;

    aget-object p1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_49
    if-ge v0, v1, :cond_54

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Ly/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_54
    return-void
.end method
