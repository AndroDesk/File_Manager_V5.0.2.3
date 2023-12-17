.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 7
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .registers 4

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    if-eq p1, v0, :cond_a

    .line 5
    const/high16 v0, 0x40000000  # 2.0f

    .line 7
    if-eq p1, v0, :cond_9

    .line 9
    return p2

    .line 10
    :cond_9
    return p0

    .line 11
    :cond_a
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 12
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 17
    move-result p2

    .line 18
    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 20
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    return-void
.end method


# virtual methods
.method public getItemSpacing()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 3
    return v0
.end method

.method public getLineSpacing()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 3
    return v0
.end method

.method public getRowCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 3
    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .registers 3

    .line 1
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Ljava/lang/Integer;

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_c
    check-cast p1, Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public isSingleLine()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 3
    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p1, :cond_a

    .line 8
    iput p3, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 10
    return-void

    .line 11
    :cond_a
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 14
    sget-object p5, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 19
    move-result p5

    .line 20
    if-ne p5, p1, :cond_17

    .line 22
    move p5, p1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move p5, p3

    .line 25
    :goto_18
    if-eqz p5, :cond_1f

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v0

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    move-result v0

    .line 36
    :goto_23
    if-eqz p5, :cond_2a

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 41
    move-result v1

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 46
    move-result v1

    .line 47
    :goto_2e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 50
    move-result v2

    .line 51
    sub-int/2addr p4, p2

    .line 52
    sub-int/2addr p4, v1

    .line 53
    move v1, p3

    .line 54
    move v3, v0

    .line 55
    move p2, v2

    .line 56
    :goto_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    move-result v4

    .line 60
    if-ge v1, v4, :cond_b3

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 69
    move-result v5

    .line 70
    const/16 v6, 0x8

    .line 72
    if-ne v5, v6, :cond_54

    .line 74
    sget v5, Lcom/google/android/material/R$id;->row_index_key:I

    .line 76
    const/4 v6, -0x1

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 84
    goto :goto_b0

    .line 85
    :cond_54
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v5

    .line 89
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    if-eqz v6, :cond_67

    .line 93
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    invoke-static {v5}, Lm0/i;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 98
    move-result v6

    .line 99
    invoke-static {v5}, Lm0/i;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 102
    move-result v5

    .line 103
    goto :goto_69

    .line 104
    :cond_67
    move v5, p3

    .line 105
    move v6, v5

    .line 106
    :goto_69
    add-int v7, v3, v6

    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 111
    move-result v8

    .line 112
    add-int/2addr v8, v7

    .line 113
    iget-boolean v7, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 115
    if-nez v7, :cond_7f

    .line 117
    if-le v8, p4, :cond_7f

    .line 119
    iget p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 121
    add-int/2addr p2, v2

    .line 122
    iget v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 124
    add-int/2addr v2, p1

    .line 125
    iput v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 127
    move v3, v0

    .line 128
    :cond_7f
    sget v2, Lcom/google/android/material/R$id;->row_index_key:I

    .line 130
    iget v7, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 132
    sub-int/2addr v7, p1

    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v4, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 140
    add-int v2, v3, v6

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    move-result v7

    .line 146
    add-int/2addr v7, v2

    .line 147
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    move-result v8

    .line 151
    add-int/2addr v8, p2

    .line 152
    if-eqz p5, :cond_a2

    .line 154
    sub-int v2, p4, v7

    .line 156
    sub-int v7, p4, v3

    .line 158
    sub-int/2addr v7, v6

    .line 159
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 162
    goto :goto_a5

    .line 163
    :cond_a2
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 166
    :goto_a5
    add-int/2addr v6, v5

    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 170
    move-result v2

    .line 171
    add-int/2addr v2, v6

    .line 172
    iget v4, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 174
    add-int/2addr v2, v4

    .line 175
    add-int/2addr v3, v2

    .line 176
    move v2, v8

    .line 177
    :goto_b0
    add-int/lit8 v1, v1, 0x1

    .line 179
    goto :goto_37

    .line 180
    :cond_b3
    return-void
.end method

.method public onMeasure(II)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result v2

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    move-result v4

    .line 19
    const/high16 v5, -0x80000000

    .line 21
    if-eq v2, v5, :cond_1f

    .line 23
    const/high16 v5, 0x40000000  # 2.0f

    .line 25
    if-ne v2, v5, :cond_1b

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    const v5, 0x7fffffff

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    move v5, v1

    .line 33
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    move-result v6

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    move-result v7

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    move-result v8

    .line 45
    sub-int/2addr v5, v8

    .line 46
    move v9, v7

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    :goto_30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    move-result v12

    .line 53
    if-ge v10, v12, :cond_b0

    .line 55
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v12

    .line 59
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 62
    move-result v13

    .line 63
    const/16 v14, 0x8

    .line 65
    if-ne v13, v14, :cond_49

    .line 67
    move/from16 v13, p1

    .line 69
    move/from16 v14, p2

    .line 71
    const/16 v16, 0x0

    .line 73
    goto :goto_ad

    .line 74
    :cond_49
    move/from16 v13, p1

    .line 76
    move/from16 v14, p2

    .line 78
    invoke-virtual {v0, v12, v13, v14}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 81
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    move-result-object v15

    .line 85
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    if-eqz v8, :cond_65

    .line 89
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 93
    const/16 v16, 0x0

    .line 95
    add-int/lit8 v8, v8, 0x0

    .line 97
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 99
    add-int/lit8 v15, v15, 0x0

    .line 101
    goto :goto_6a

    .line 102
    :cond_65
    const/16 v16, 0x0

    .line 104
    move/from16 v8, v16

    .line 106
    move v15, v8

    .line 107
    :goto_6a
    add-int v17, v6, v8

    .line 109
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    move-result v18

    .line 113
    move/from16 v19, v6

    .line 115
    add-int v6, v18, v17

    .line 117
    if-le v6, v5, :cond_84

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_84

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 128
    move-result v6

    .line 129
    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 131
    add-int/2addr v9, v7

    .line 132
    goto :goto_86

    .line 133
    :cond_84
    move/from16 v6, v19

    .line 135
    :goto_86
    add-int v7, v6, v8

    .line 137
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 140
    move-result v17

    .line 141
    add-int v7, v17, v7

    .line 143
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 146
    move-result v17

    .line 147
    add-int v17, v17, v9

    .line 149
    if-le v7, v11, :cond_97

    .line 151
    move v11, v7

    .line 152
    :cond_97
    add-int/2addr v8, v15

    .line 153
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 156
    move-result v7

    .line 157
    add-int/2addr v7, v8

    .line 158
    iget v8, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 160
    add-int/2addr v7, v8

    .line 161
    add-int/2addr v7, v6

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 165
    move-result v6

    .line 166
    add-int/lit8 v6, v6, -0x1

    .line 168
    if-ne v10, v6, :cond_aa

    .line 170
    add-int/2addr v11, v15

    .line 171
    :cond_aa
    move v6, v7

    .line 172
    move/from16 v7, v17

    .line 174
    :goto_ad
    add-int/lit8 v10, v10, 0x1

    .line 176
    goto :goto_30

    .line 177
    :cond_b0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 180
    move-result v5

    .line 181
    add-int/2addr v5, v11

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 185
    move-result v6

    .line 186
    add-int/2addr v6, v7

    .line 187
    invoke-static {v1, v2, v5}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    .line 190
    move-result v1

    .line 191
    invoke-static {v3, v4, v6}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    .line 194
    move-result v2

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 198
    return-void
.end method

.method public setItemSpacing(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 3
    return-void
.end method

.method public setLineSpacing(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 3
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 3
    return-void
.end method
