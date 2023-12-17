.class public final Landroidx/constraintlayout/widget/a;
.super Landroidx/constraintlayout/widget/b;
.source "Barrier.java"


# instance fields
.field public i:I

.field public j:I

.field public k:Landroidx/constraintlayout/core/widgets/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getAllowsGoneWidget()Z
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    return v0
.end method

.method public getMargin()I
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/widget/a;->i:I

    return v0
.end method

.method public final j()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/widgets/a;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->l()V

    return-void
.end method

.method public final k(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 8

    iget v0, p0, Landroidx/constraintlayout/widget/a;->i:I

    iput v0, p0, Landroidx/constraintlayout/widget/a;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz p2, :cond_14

    if-ne v0, v4, :cond_f

    iput v1, p0, Landroidx/constraintlayout/widget/a;->j:I

    goto :goto_1d

    :cond_f
    if-ne v0, v3, :cond_1d

    iput v2, p0, Landroidx/constraintlayout/widget/a;->j:I

    goto :goto_1d

    :cond_14
    if-ne v0, v4, :cond_19

    iput v2, p0, Landroidx/constraintlayout/widget/a;->j:I

    goto :goto_1d

    :cond_19
    if-ne v0, v3, :cond_1d

    iput v1, p0, Landroidx/constraintlayout/widget/a;->j:I

    :cond_1d
    :goto_1d
    instance-of p2, p1, Landroidx/constraintlayout/core/widgets/a;

    if-eqz p2, :cond_27

    check-cast p1, Landroidx/constraintlayout/core/widgets/a;

    iget p2, p0, Landroidx/constraintlayout/widget/a;->j:I

    iput p2, p1, Landroidx/constraintlayout/core/widgets/a;->u0:I

    :cond_27
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    iput-boolean p1, v0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    return-void
.end method

.method public setDpMargin(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    iput p1, v0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    return-void
.end method

.method public setMargin(I)V
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/widget/a;->k:Landroidx/constraintlayout/core/widgets/a;

    iput p1, v0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/widget/a;->i:I

    return-void
.end method
