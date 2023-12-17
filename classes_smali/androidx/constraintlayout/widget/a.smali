.class public final Landroidx/constraintlayout/widget/a;
.super Landroidx/constraintlayout/widget/b;
.source "Barrier.java"


# instance fields
.field public i:I

.field public j:I

.field public k:Landroidx/constraintlayout/core/widgets/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;)V

    .line 4
    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public getAllowsGoneWidget()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    .line 3
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 5
    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 5
    return v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/a;->i:I

    .line 3
    return v0
.end method

.method public final j()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/widgets/a;

    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/a;-><init>()V

    .line 6
    iput-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    .line 10
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->l()V

    .line 13
    return-void
.end method

.method public final k(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/a;->i:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/a;->j:I

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x6

    .line 8
    const/4 v4, 0x5

    .line 9
    if-eqz p2, :cond_14

    .line 11
    if-ne v0, v4, :cond_f

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/a;->j:I

    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    if-ne v0, v3, :cond_1d

    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/a;->j:I

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    if-ne v0, v4, :cond_19

    .line 23
    iput v2, p0, Landroidx/constraintlayout/widget/a;->j:I

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    if-ne v0, v3, :cond_1d

    .line 28
    iput v1, p0, Landroidx/constraintlayout/widget/a;->j:I

    .line 30
    :cond_1d
    :goto_1d
    instance-of p2, p1, Landroidx/constraintlayout/core/widgets/a;

    .line 32
    if-eqz p2, :cond_27

    .line 34
    check-cast p1, Landroidx/constraintlayout/core/widgets/a;

    .line 36
    iget p2, p0, Landroidx/constraintlayout/widget/a;->j:I

    .line 38
    iput p2, p1, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 40
    :cond_27
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    .line 3
    iput-boolean p1, v0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 5
    return-void
.end method

.method public setDpMargin(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    int-to-float p1, p1

    .line 12
    mul-float/2addr p1, v0

    .line 13
    const/high16 v0, 0x3f000000  # 0.5f

    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    .line 19
    iput p1, v0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 21
    return-void
.end method

.method public setMargin(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 5
    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/a;->i:I

    .line 3
    return-void
.end method
