.class public Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;
.super Landroid/view/ViewGroup;
.source "NestedScrollViewExpander.java"


# instance fields
.field private mExpandView:Landroid/view/View;

.field private mParentHeightMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p5, 0x0

    :goto_5
    if-ge p5, p1, :cond_38

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, p3

    add-int/2addr v2, v4

    add-int v6, v5, v3

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/view/View;->layout(IIII)V

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v0

    add-int/2addr p3, v3

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_5

    :cond_38
    return-void
.end method

.method public onMeasure(II)V
    .registers 18

    move-object v6, p0

    iget v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_b

    const/high16 v0, -0x80000000

    :cond_b
    move v7, v0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_17
    const/16 v0, 0x8

    if-ge v11, v9, :cond_4a

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_26

    goto :goto_47

    :cond_26
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    if-eq v0, v13, :cond_47

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    :cond_47
    :goto_47
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_4a
    iget v1, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, v12

    iget-object v2, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_8e

    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-ge v1, v0, :cond_69

    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    :cond_69
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v10, v0, v1

    :cond_8e
    add-int/2addr v10, v12

    invoke-virtual {p0, v8, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExpandView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    return-void
.end method

.method public setParentHeightMeasureSpec(I)V
    .registers 2

    iput p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    return-void
.end method
