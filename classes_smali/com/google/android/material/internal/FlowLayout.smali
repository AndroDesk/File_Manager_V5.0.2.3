.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .registers 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_a

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p1, v0, :cond_9

    return p2

    :cond_9
    return p0

    :cond_a
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemSpacing()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method public getLineSpacing()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method public getRowCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .registers 3

    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isSingleLine()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_a

    iput p3, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return-void

    :cond_a
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    sget-object p5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result p5

    if-ne p5, p1, :cond_17

    move p5, p1

    goto :goto_18

    :cond_17
    move p5, p3

    :goto_18
    if-eqz p5, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    :goto_23
    if-eqz p5, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    :goto_2e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    move v1, p3

    move v3, v0

    move p2, v2

    :goto_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_b3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_54

    sget v5, Lcom/google/android/material/R$id;->row_index_key:I

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_b0

    :cond_54
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_67

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v5}, Lm0/i;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    invoke-static {v5}, Lm0/i;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    goto :goto_69

    :cond_67
    move v5, p3

    move v6, v5

    :goto_69
    add-int v7, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    iget-boolean v7, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v7, :cond_7f

    if-le v8, p4, :cond_7f

    iget p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr p2, v2

    iget v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    move v3, v0

    :cond_7f
    sget v2, Lcom/google/android/material/R$id;->row_index_key:I

    iget v7, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int v2, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, p2

    if-eqz p5, :cond_a2

    sub-int v2, p4, v7

    sub-int v7, p4, v3

    sub-int/2addr v7, v6

    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_a5

    :cond_a2
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    :goto_a5
    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v6

    iget v4, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    move v2, v8

    :goto_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_b3
    return-void
.end method

.method public onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1f

    const/high16 v5, 0x40000000  # 2.0f

    if-ne v2, v5, :cond_1b

    goto :goto_1f

    :cond_1b
    const v5, 0x7fffffff

    goto :goto_20

    :cond_1f
    :goto_1f
    move v5, v1

    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_b0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_49

    move/from16 v13, p1

    move/from16 v14, p2

    const/16 v16, 0x0

    goto :goto_ad

    :cond_49
    move/from16 v13, p1

    move/from16 v14, p2

    invoke-virtual {v0, v12, v13, v14}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_65

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x0

    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v15, v15, 0x0

    goto :goto_6a

    :cond_65
    const/16 v16, 0x0

    move/from16 v8, v16

    move v15, v8

    :goto_6a
    add-int v17, v6, v8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v6

    add-int v6, v18, v17

    if-le v6, v5, :cond_84

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v6

    if-nez v6, :cond_84

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v9, v7

    goto :goto_86

    :cond_84
    move/from16 v6, v19

    :goto_86
    add-int v7, v6, v8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v7, v17, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v9

    if-le v7, v11, :cond_97

    move v11, v7

    :cond_97
    add-int/2addr v8, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v8

    iget v8, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v10, v6, :cond_aa

    add-int/2addr v11, v15

    :cond_aa
    move v6, v7

    move/from16 v7, v17

    :goto_ad
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_b0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v1, v2, v5}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    invoke-static {v3, v4, v6}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return-void
.end method

.method public setLineSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return-void
.end method
