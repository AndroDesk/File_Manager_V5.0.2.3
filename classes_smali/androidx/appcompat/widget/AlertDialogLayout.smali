.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/i0;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .registers 4

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_9

    .line 9
    return v0

    .line 10
    :cond_9
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_20

    .line 15
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_20

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->b(Landroid/view/View;)I

    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_20
    return v1
.end method


# virtual methods
.method public final forceUniformWidth(II)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000  # 2.0f

    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-ge v1, p1, :cond_3a

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v2

    .line 22
    const/16 v4, 0x8

    .line 24
    if-eq v2, v4, :cond_37

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v2

    .line 30
    move-object v8, v2

    .line 31
    check-cast v8, Landroidx/appcompat/widget/i0$a;

    .line 33
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 35
    const/4 v4, -0x1

    .line 36
    if-ne v2, v4, :cond_37

    .line 38
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result v2

    .line 44
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, p0

    .line 49
    move v4, v0

    .line 50
    move v6, p2

    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 54
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 56
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_b

    .line 59
    :cond_3a
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 9
    move-result p2

    .line 10
    sub-int p2, p4, p2

    .line 12
    sub-int/2addr p4, p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr p4, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/widget/i0;->getGravity()I

    .line 29
    move-result v2

    .line 30
    and-int/lit8 v3, v2, 0x70

    .line 32
    const v4, 0x800007

    .line 35
    and-int/2addr v2, v4

    .line 36
    const/16 v4, 0x10

    .line 38
    if-eq v3, v4, :cond_39

    .line 40
    const/16 v4, 0x50

    .line 42
    if-eq v3, v4, :cond_30

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    move-result p3

    .line 48
    goto :goto_43

    .line 49
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 52
    move-result v3

    .line 53
    add-int/2addr v3, p5

    .line 54
    sub-int/2addr v3, p3

    .line 55
    sub-int p3, v3, v0

    .line 57
    goto :goto_43

    .line 58
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    move-result v3

    .line 62
    sub-int/2addr p5, p3

    .line 63
    sub-int/2addr p5, v0

    .line 64
    div-int/lit8 p5, p5, 0x2

    .line 66
    add-int p3, p5, v3

    .line 68
    :goto_43
    invoke-virtual {p0}, Landroidx/appcompat/widget/i0;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object p5

    .line 72
    const/4 v0, 0x0

    .line 73
    if-nez p5, :cond_4c

    .line 75
    move p5, v0

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 80
    move-result p5

    .line 81
    :goto_50
    if-ge v0, v1, :cond_b1

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_ae

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 92
    move-result v4

    .line 93
    const/16 v5, 0x8

    .line 95
    if-eq v4, v5, :cond_ae

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 100
    move-result v4

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    move-result v5

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Landroidx/appcompat/widget/i0$a;

    .line 111
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    if-gez v7, :cond_73

    .line 115
    move v7, v2

    .line 116
    :cond_73
    sget-object v8, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 118
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 121
    move-result v8

    .line 122
    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 125
    move-result v7

    .line 126
    and-int/lit8 v7, v7, 0x7

    .line 128
    const/4 v8, 0x1

    .line 129
    if-eq v7, v8, :cond_8e

    .line 131
    const/4 v8, 0x5

    .line 132
    if-eq v7, v8, :cond_89

    .line 134
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 136
    add-int/2addr v7, p1

    .line 137
    goto :goto_99

    .line 138
    :cond_89
    sub-int v7, p2, v4

    .line 140
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 142
    goto :goto_98

    .line 143
    :cond_8e
    sub-int v7, p4, v4

    .line 145
    div-int/lit8 v7, v7, 0x2

    .line 147
    add-int/2addr v7, p1

    .line 148
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    add-int/2addr v7, v8

    .line 151
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 153
    :goto_98
    sub-int/2addr v7, v8

    .line 154
    :goto_99
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/i0;->hasDividerBeforeChildAt(I)Z

    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_a0

    .line 160
    add-int/2addr p3, p5

    .line 161
    :cond_a0
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    add-int/2addr p3, v8

    .line 164
    add-int/2addr v4, v7

    .line 165
    add-int v8, v5, p3

    .line 167
    invoke-virtual {v3, v7, p3, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 170
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 172
    add-int/2addr v5, v3

    .line 173
    add-int/2addr v5, p3

    .line 174
    move p3, v5

    .line 175
    :cond_ae
    add-int/lit8 v0, v0, 0x1

    .line 177
    goto :goto_50

    .line 178
    :cond_b1
    return-void
.end method

.method public final onMeasure(II)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v6, v4

    .line 14
    move-object v7, v6

    .line 15
    move v8, v5

    .line 16
    :goto_f
    const/16 v9, 0x8

    .line 18
    if-ge v8, v3, :cond_3e

    .line 20
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v10

    .line 24
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v11

    .line 28
    if-ne v11, v9, :cond_1e

    .line 30
    goto :goto_3b

    .line 31
    :cond_1e
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 34
    move-result v9

    .line 35
    sget v11, Lh/f;->topPanel:I

    .line 37
    if-ne v9, v11, :cond_28

    .line 39
    move-object v4, v10

    .line 40
    goto :goto_3b

    .line 41
    :cond_28
    sget v11, Lh/f;->buttonPanel:I

    .line 43
    if-ne v9, v11, :cond_2e

    .line 45
    move-object v6, v10

    .line 46
    goto :goto_3b

    .line 47
    :cond_2e
    sget v11, Lh/f;->contentPanel:I

    .line 49
    if-eq v9, v11, :cond_36

    .line 51
    sget v11, Lh/f;->customPanel:I

    .line 53
    if-ne v9, v11, :cond_114

    .line 55
    :cond_36
    if-eqz v7, :cond_3a

    .line 57
    goto/16 :goto_114

    .line 59
    :cond_3a
    move-object v7, v10

    .line 60
    :goto_3b
    add-int/lit8 v8, v8, 0x1

    .line 62
    goto :goto_f

    .line 63
    :cond_3e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 66
    move-result v8

    .line 67
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 70
    move-result v10

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 74
    move-result v11

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 78
    move-result v12

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 82
    move-result v13

    .line 83
    add-int/2addr v13, v12

    .line 84
    if-eqz v4, :cond_66

    .line 86
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    move-result v12

    .line 93
    add-int/2addr v13, v12

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    .line 97
    move-result v4

    .line 98
    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 101
    move-result v4

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move v4, v5

    .line 104
    :goto_67
    if-eqz v6, :cond_7f

    .line 106
    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-static {v6}, Landroidx/appcompat/widget/AlertDialogLayout;->b(Landroid/view/View;)I

    .line 112
    move-result v12

    .line 113
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 116
    move-result v14

    .line 117
    sub-int/2addr v14, v12

    .line 118
    add-int/2addr v13, v12

    .line 119
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    .line 122
    move-result v15

    .line 123
    invoke-static {v4, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 126
    move-result v4

    .line 127
    goto :goto_81

    .line 128
    :cond_7f
    move v12, v5

    .line 129
    move v14, v12

    .line 130
    :goto_81
    if-eqz v7, :cond_a2

    .line 132
    if-nez v8, :cond_87

    .line 134
    move v15, v5

    .line 135
    goto :goto_91

    .line 136
    :cond_87
    sub-int v15, v10, v13

    .line 138
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 141
    move-result v15

    .line 142
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 145
    move-result v15

    .line 146
    :goto_91
    invoke-virtual {v7, v1, v15}, Landroid/view/View;->measure(II)V

    .line 149
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 152
    move-result v15

    .line 153
    add-int/2addr v13, v15

    .line 154
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    .line 157
    move-result v5

    .line 158
    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 161
    move-result v4

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    const/4 v15, 0x0

    .line 164
    :goto_a3
    sub-int/2addr v10, v13

    .line 165
    const/high16 v5, 0x40000000  # 2.0f

    .line 167
    if-eqz v6, :cond_c5

    .line 169
    sub-int/2addr v13, v12

    .line 170
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    .line 173
    move-result v14

    .line 174
    if-lez v14, :cond_b1

    .line 176
    sub-int/2addr v10, v14

    .line 177
    add-int/2addr v12, v14

    .line 178
    :cond_b1
    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 181
    move-result v12

    .line 182
    invoke-virtual {v6, v1, v12}, Landroid/view/View;->measure(II)V

    .line 185
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 188
    move-result v12

    .line 189
    add-int/2addr v13, v12

    .line 190
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    .line 193
    move-result v6

    .line 194
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 197
    move-result v4

    .line 198
    :cond_c5
    if-eqz v7, :cond_df

    .line 200
    if-lez v10, :cond_df

    .line 202
    sub-int/2addr v13, v15

    .line 203
    add-int/2addr v15, v10

    .line 204
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 207
    move-result v6

    .line 208
    invoke-virtual {v7, v1, v6}, Landroid/view/View;->measure(II)V

    .line 211
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 214
    move-result v6

    .line 215
    add-int/2addr v13, v6

    .line 216
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    .line 219
    move-result v6

    .line 220
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 223
    move-result v4

    .line 224
    :cond_df
    const/4 v6, 0x0

    .line 225
    const/4 v7, 0x0

    .line 226
    :goto_e1
    if-ge v6, v3, :cond_f8

    .line 228
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 235
    move-result v10

    .line 236
    if-eq v10, v9, :cond_f5

    .line 238
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 241
    move-result v8

    .line 242
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 245
    move-result v7

    .line 246
    :cond_f5
    add-int/lit8 v6, v6, 0x1

    .line 248
    goto :goto_e1

    .line 249
    :cond_f8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 252
    move-result v6

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 256
    move-result v8

    .line 257
    add-int/2addr v8, v6

    .line 258
    add-int/2addr v8, v7

    .line 259
    invoke-static {v8, v1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 262
    move-result v4

    .line 263
    const/4 v6, 0x0

    .line 264
    invoke-static {v13, v2, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 267
    move-result v6

    .line 268
    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 271
    if-eq v11, v5, :cond_113

    .line 273
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 276
    :cond_113
    const/4 v5, 0x1

    .line 277
    :cond_114
    :goto_114
    if-nez v5, :cond_119

    .line 279
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/i0;->onMeasure(II)V

    .line 282
    :cond_119
    return-void
.end method
