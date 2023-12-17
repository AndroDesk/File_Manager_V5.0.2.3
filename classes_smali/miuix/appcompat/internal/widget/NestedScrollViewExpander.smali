.class public Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;
.super Landroid/view/ViewGroup;
.source "NestedScrollViewExpander.java"


# instance fields
.field private mExpandView:Landroid/view/View;

.field private mParentHeightMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-object v0
.end method

.method public onLayout(ZIIII)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    const/4 p5, 0x0

    .line 6
    :goto_5
    if-ge p5, p1, :cond_38

    .line 8
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    move-result v3

    .line 26
    sub-int v4, p4, p2

    .line 28
    sub-int/2addr v4, v2

    .line 29
    div-int/lit8 v4, v4, 0x2

    .line 31
    add-int/2addr v4, p2

    .line 32
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 34
    add-int/2addr v4, v5

    .line 35
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    sub-int/2addr v4, v5

    .line 38
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    add-int/2addr v5, p3

    .line 41
    add-int/2addr v2, v4

    .line 42
    add-int v6, v5, v3

    .line 44
    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/view/View;->layout(IIII)V

    .line 47
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 49
    add-int/2addr p3, v0

    .line 50
    add-int/2addr p3, v3

    .line 51
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 53
    add-int/2addr p3, v0

    .line 54
    add-int/lit8 p5, p5, 0x1

    .line 56
    goto :goto_5

    .line 57
    :cond_38
    return-void
.end method

.method public onMeasure(II)V
    .registers 18

    .line 1
    move-object v6, p0

    .line 2
    iget v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 4
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_b

    .line 10
    const/high16 v0, -0x80000000

    .line 12
    :cond_b
    move v7, v0

    .line 13
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result v8

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v9

    .line 21
    const/4 v10, 0x0

    .line 22
    move v11, v10

    .line 23
    move v12, v11

    .line 24
    :goto_17
    const/16 v0, 0x8

    .line 26
    if-ge v11, v9, :cond_4a

    .line 28
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v13

    .line 32
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 35
    move-result v1

    .line 36
    if-ne v1, v0, :cond_26

    .line 38
    goto :goto_47

    .line 39
    :cond_26
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 41
    if-eq v0, v13, :cond_47

    .line 43
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v0

    .line 47
    move-object v14, v0

    .line 48
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v0, p0

    .line 53
    move-object v1, v13

    .line 54
    move/from16 v2, p1

    .line 56
    move/from16 v4, p2

    .line 58
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 61
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    move-result v0

    .line 65
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 67
    add-int/2addr v0, v1

    .line 68
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 70
    add-int/2addr v0, v1

    .line 71
    add-int/2addr v12, v0

    .line 72
    :cond_47
    :goto_47
    add-int/lit8 v11, v11, 0x1

    .line 74
    goto :goto_17

    .line 75
    :cond_4a
    iget v1, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 77
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 80
    move-result v1

    .line 81
    sub-int/2addr v1, v12

    .line 82
    iget-object v2, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 84
    if-eqz v2, :cond_8e

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 89
    move-result v2

    .line 90
    if-eq v2, v0, :cond_8e

    .line 92
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 97
    move-result v0

    .line 98
    if-ge v1, v0, :cond_69

    .line 100
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 105
    move-result v1

    .line 106
    :cond_69
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    move-result-object v0

    .line 112
    move-object v9, v0

    .line 113
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    iget-object v2, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 121
    move-result v4

    .line 122
    const/4 v5, 0x0

    .line 123
    move-object v0, p0

    .line 124
    move-object v1, v2

    .line 125
    move/from16 v2, p1

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 130
    iget-object v0, v6, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 135
    move-result v0

    .line 136
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 138
    add-int/2addr v0, v1

    .line 139
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 141
    add-int v10, v0, v1

    .line 143
    :cond_8e
    add-int/2addr v10, v12

    .line 144
    invoke-virtual {p0, v8, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 147
    return-void
.end method

.method public setExpandView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mExpandView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setParentHeightMeasureSpec(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 3
    return-void
.end method
