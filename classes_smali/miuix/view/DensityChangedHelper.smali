.class public Lmiuix/view/DensityChangedHelper;
.super Ljava/lang/Object;
.source "DensityChangedHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateTextSize(Landroid/widget/TextView;F)V
    .registers 3

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, v0}, Lmiuix/view/DensityChangedHelper;->updateTextSize(Landroid/widget/TextView;FI)V

    return-void
.end method

.method public static updateTextSize(Landroid/widget/TextView;FI)V
    .registers 5

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_13

    .line 5
    invoke-static {p0}, Landroidx/core/content/a;->a(Landroid/widget/TextView;)I

    move-result p2

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    div-float/2addr v0, p1

    .line 7
    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1b

    .line 8
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    div-float/2addr v0, p1

    .line 9
    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1b
    return-void
.end method

.method public static updateTextSize(Landroid/widget/TextView;I)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, v0}, Lmiuix/view/DensityChangedHelper;->updateTextSize(Landroid/widget/TextView;II)V

    return-void
.end method

.method public static updateTextSize(Landroid/widget/TextView;II)V
    .registers 4

    int-to-float p1, p1

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p1, v0

    .line 3
    invoke-static {p0, p1, p2}, Lmiuix/view/DensityChangedHelper;->updateTextSize(Landroid/widget/TextView;FI)V

    return-void
.end method

.method public static updateTextSizeDefaultUnit(Landroid/widget/TextView;F)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    invoke-static {p0}, Landroidx/core/content/a;->a(Landroid/widget/TextView;)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    :goto_12
    return-void
.end method

.method public static updateTextSizeDpUnit(Landroid/widget/TextView;F)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    return-void
.end method

.method public static updateTextSizeSpUnit(Landroid/widget/TextView;F)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    return-void
.end method

.method public static updateView(Landroid/view/View;FF)V
    .registers 3

    .line 4
    invoke-static {p0, p2}, Lmiuix/view/DensityChangedHelper;->updateViewSize(Landroid/view/View;F)V

    .line 5
    invoke-static {p0, p2}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 6
    invoke-static {p0, p2}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 7
    instance-of p2, p0, Landroid/widget/TextView;

    if-eqz p2, :cond_12

    .line 8
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lmiuix/view/DensityChangedHelper;->updateTextSize(Landroid/widget/TextView;F)V

    :cond_12
    return-void
.end method

.method public static updateView(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr p1, v1

    .line 2
    invoke-static {p0, p1, v0}, Lmiuix/view/DensityChangedHelper;->updateView(Landroid/view/View;FF)V

    return-void
.end method

.method public static updateView(Landroid/view/View;IF)V
    .registers 4

    int-to-float p1, p1

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p1, v0

    .line 3
    invoke-static {p0, p1, p2}, Lmiuix/view/DensityChangedHelper;->updateView(Landroid/view/View;FF)V

    return-void
.end method

.method public static updateViewMargin(Landroid/view/View;F)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_29

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_29
    return-void
.end method

.method public static updateViewMargin(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 2
    invoke-static {p0, v0}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    return-void
.end method

.method public static updateViewMarginByResource(Landroid/content/res/Resources;Landroid/view/View;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 1
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1d

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 5
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    return-void
.end method

.method public static updateViewMarginByResource(Landroid/content/res/Resources;Landroid/view/View;IIII)V
    .registers 12

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_53

    .line 12
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, p4, :cond_16

    if-eq p2, v2, :cond_16

    .line 13
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v4, v3

    goto :goto_26

    :cond_16
    if-eq p2, v2, :cond_1d

    .line 14
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1e

    :cond_1d
    move v3, v1

    :goto_1e
    if-eq p4, v2, :cond_25

    .line 15
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    if-ne p3, p5, :cond_30

    if-eq p3, v2, :cond_30

    .line 16
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move p0, v1

    goto :goto_40

    :cond_30
    if-eq p3, v2, :cond_37

    .line 17
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_38

    :cond_37
    move v5, v1

    :goto_38
    if-eq p5, v2, :cond_3e

    .line 18
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_3e
    move p0, v1

    move v1, v5

    :goto_40
    if-eq p2, v2, :cond_44

    .line 19
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_44
    if-eq p3, v2, :cond_48

    .line 20
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_48
    if-eq p4, v2, :cond_4c

    .line 21
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_4c
    if-eq p5, v2, :cond_50

    .line 22
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 23
    :cond_50
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    return-void
.end method

.method public static updateViewPadding(Landroid/view/View;F)V
    .registers 6

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static updateViewPadding(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 2
    invoke-static {p0, v0}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    return-void
.end method

.method public static updateViewPaddingByResource(Landroid/content/res/Resources;Landroid/view/View;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 1
    :cond_4
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static updateViewPaddingByResource(Landroid/content/res/Resources;Landroid/view/View;IIII)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, p4, :cond_c

    if-eq p2, v1, :cond_c

    .line 3
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v3, v2

    goto :goto_1c

    :cond_c
    if-eq p2, v1, :cond_13

    .line 4
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    if-eq p4, v1, :cond_1b

    .line 5
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1c

    :cond_1b
    move v3, v0

    :goto_1c
    if-ne p3, p5, :cond_26

    if-eq p3, v1, :cond_26

    .line 6
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move p0, v0

    goto :goto_36

    :cond_26
    if-eq p3, v1, :cond_2d

    .line 7
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2e

    :cond_2d
    move v4, v0

    :goto_2e
    if-eq p5, v1, :cond_34

    .line 8
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_34
    move p0, v0

    move v0, v4

    :goto_36
    if-ne p2, v1, :cond_3c

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    :cond_3c
    if-ne p3, v1, :cond_42

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :cond_42
    if-ne p4, v1, :cond_48

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    :cond_48
    if-ne p5, v1, :cond_4e

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 13
    :cond_4e
    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static updateViewSize(Landroid/view/View;F)V
    .registers 6

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    if-lez v1, :cond_10

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v1, v2

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 6
    :goto_11
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1b

    int-to-float v1, v3

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    if-eqz v2, :cond_21

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    return-void
.end method

.method public static updateViewSize(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 2
    invoke-static {p0, v0}, Lmiuix/view/DensityChangedHelper;->updateViewSize(Landroid/view/View;F)V

    return-void
.end method

.method public static updateViewSizeByResource(Landroid/content/res/Resources;Landroid/view/View;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 1
    :cond_4
    invoke-static {p0, p1, p2, p2}, Lmiuix/view/DensityChangedHelper;->updateViewSizeByResource(Landroid/content/res/Resources;Landroid/view/View;II)V

    return-void
.end method

.method public static updateViewSizeByResource(Landroid/content/res/Resources;Landroid/view/View;II)V
    .registers 9

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, p3, :cond_1d

    if-eq p2, v1, :cond_1d

    .line 3
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 4
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez p2, :cond_16

    .line 5
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v2

    .line 6
    :cond_16
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_37

    .line 7
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_38

    :cond_1d
    if-eq p2, v1, :cond_2a

    .line 8
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v4, :cond_2a

    .line 9
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v2

    :cond_2a
    if-eq p3, v1, :cond_37

    .line 10
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_37

    .line 11
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    if-eqz v2, :cond_3d

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3d
    return-void
.end method
