.class public Lcom/google/android/flexbox/FlexboxItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FlexboxItemDecoration.java"


# static fields
.field public static final BOTH:I = 0x3

.field public static final HORIZONTAL:I = 0x1

.field private static final LIST_DIVIDER_ATTRS:[I

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x1010214

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/google/android/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    sget-object v0, Lcom/google/android/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOrientation(I)V

    .line 24
    return-void
.end method

.method private drawHorizontalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    move-result v3

    .line 26
    sub-int/2addr v2, v3

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 30
    move-result v3

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 34
    move-result v4

    .line 35
    add-int/2addr v4, v3

    .line 36
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    move-result v3

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_28
    if-ge v5, v3, :cond_b4

    .line 43
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 53
    const/4 v8, 0x3

    .line 54
    if-ne v1, v8, :cond_46

    .line 56
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 59
    move-result v8

    .line 60
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 62
    add-int/2addr v8, v9

    .line 63
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 68
    move-result v9

    .line 69
    add-int/2addr v9, v8

    .line 70
    goto :goto_56

    .line 71
    :cond_46
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 74
    move-result v8

    .line 75
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 77
    sub-int v9, v8, v9

    .line 79
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 84
    move-result v8

    .line 85
    sub-int v8, v9, v8

    .line 87
    :goto_56
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_95

    .line 93
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    .line 96
    move-result v10

    .line 97
    if-eqz v10, :cond_7c

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 102
    move-result v10

    .line 103
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 105
    add-int/2addr v10, v11

    .line 106
    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 111
    move-result v11

    .line 112
    add-int/2addr v11, v10

    .line 113
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    .line 116
    move-result v10

    .line 117
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 120
    move-result v6

    .line 121
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 123
    sub-int/2addr v6, v7

    .line 124
    goto :goto_a6

    .line 125
    :cond_7c
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 128
    move-result v10

    .line 129
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 131
    sub-int/2addr v10, v11

    .line 132
    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 137
    move-result v11

    .line 138
    sub-int/2addr v10, v11

    .line 139
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 142
    move-result v10

    .line 143
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 146
    move-result v6

    .line 147
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 149
    goto :goto_a2

    .line 150
    :cond_95
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 153
    move-result v10

    .line 154
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 156
    sub-int/2addr v10, v11

    .line 157
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 160
    move-result v6

    .line 161
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 163
    :goto_a2
    add-int/2addr v6, v7

    .line 164
    move v12, v10

    .line 165
    move v10, v6

    .line 166
    move v6, v12

    .line 167
    :goto_a6
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {v7, v6, v8, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 179
    goto/16 :goto_28

    .line 181
    :cond_b4
    return-void
.end method

.method private drawVerticalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v3

    .line 31
    add-int/2addr v3, v2

    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_28
    if-ge v5, v2, :cond_b5

    .line 43
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_49

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 62
    move-result v8

    .line 63
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 65
    add-int/2addr v8, v9

    .line 66
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 71
    move-result v9

    .line 72
    add-int/2addr v9, v8

    .line 73
    goto :goto_59

    .line 74
    :cond_49
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 77
    move-result v8

    .line 78
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 80
    sub-int v9, v8, v9

    .line 82
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 87
    move-result v8

    .line 88
    sub-int v8, v9, v8

    .line 90
    :goto_59
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_6e

    .line 96
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 99
    move-result v10

    .line 100
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    sub-int/2addr v10, v11

    .line 103
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 106
    move-result v6

    .line 107
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 109
    :goto_6c
    add-int/2addr v6, v7

    .line 110
    goto :goto_a7

    .line 111
    :cond_6e
    const/4 v10, 0x3

    .line 112
    if-ne v4, v10, :cond_8e

    .line 114
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 117
    move-result v10

    .line 118
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 120
    add-int/2addr v10, v11

    .line 121
    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 126
    move-result v11

    .line 127
    add-int/2addr v11, v10

    .line 128
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    .line 131
    move-result v10

    .line 132
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 135
    move-result v6

    .line 136
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 138
    sub-int/2addr v6, v7

    .line 139
    move v12, v10

    .line 140
    move v10, v6

    .line 141
    move v6, v12

    .line 142
    goto :goto_a7

    .line 143
    :cond_8e
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 146
    move-result v10

    .line 147
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 149
    sub-int/2addr v10, v11

    .line 150
    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 155
    move-result v11

    .line 156
    sub-int/2addr v10, v11

    .line 157
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 160
    move-result v10

    .line 161
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 164
    move-result v6

    .line 165
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 167
    goto :goto_6c

    .line 168
    :goto_a7
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {v7, v8, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 180
    goto/16 :goto_28

    .line 182
    :cond_b5
    return-void
.end method

.method private isFirstItemInLine(ILjava/util/List;Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eq v0, v2, :cond_21

    .line 9
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    if-ge v0, v2, :cond_21

    .line 19
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/google/android/flexbox/FlexLine;

    .line 29
    iget p3, p3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 31
    if-ne p3, p1, :cond_21

    .line 33
    return v1

    .line 34
    :cond_21
    if-nez p1, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    move-result p3

    .line 41
    const/4 v0, 0x0

    .line 42
    if-nez p3, :cond_2c

    .line 44
    return v0

    .line 45
    :cond_2c
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 48
    move-result p3

    .line 49
    sub-int/2addr p3, v1

    .line 50
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/google/android/flexbox/FlexLine;

    .line 56
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 58
    sub-int/2addr p1, v1

    .line 59
    if-ne p2, p1, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v1, v0

    .line 63
    :goto_3e
    return v1
.end method

.method private needsHorizontalDecoration()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-lez v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method private needsVerticalDecoration()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 4
    move-result p4

    .line 5
    if-nez p4, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 18
    move-result p2

    .line 19
    const/4 p4, 0x0

    .line 20
    if-eqz p2, :cond_2b

    .line 22
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_20

    .line 28
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 30
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 32
    return-void

    .line 33
    :cond_20
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 38
    move-result p2

    .line 39
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 41
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 43
    goto :goto_4d

    .line 44
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_32

    .line 50
    return-void

    .line 51
    :cond_32
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_43

    .line 57
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 62
    move-result p2

    .line 63
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 65
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 67
    goto :goto_4d

    .line 68
    :cond_43
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 73
    move-result p2

    .line 74
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 76
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 78
    :goto_4d
    return-void
.end method

.method private setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/flexbox/FlexboxItemDecoration;->isFirstItemInLine(ILjava/util/List;Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 11
    move-result p2

    .line 12
    const/4 p4, 0x0

    .line 13
    if-eqz p2, :cond_35

    .line 15
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_19

    .line 21
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 23
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2a

    .line 32
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    move-result p2

    .line 38
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 40
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 42
    goto :goto_58

    .line 43
    :cond_2a
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 48
    move-result p2

    .line 49
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 51
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 53
    goto :goto_58

    .line 54
    :cond_35
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_40

    .line 60
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 62
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 64
    return-void

    .line 65
    :cond_40
    const/4 p2, 0x3

    .line 66
    if-ne p5, p2, :cond_4e

    .line 68
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 73
    move-result p2

    .line 74
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 76
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 78
    goto :goto_58

    .line 79
    :cond_4e
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 84
    move-result p2

    .line 85
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 87
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 89
    :goto_58
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 11

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    .line 11
    move-result p4

    .line 12
    if-nez p4, :cond_18

    .line 14
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    .line 17
    move-result p4

    .line 18
    if-nez p4, :cond_18

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    return-void

    .line 25
    :cond_18
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLines()Ljava/util/List;

    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    .line 38
    move-result v5

    .line 39
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    move v2, p2

    .line 42
    move-object v3, p3

    .line 43
    move-object v4, p4

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;)V

    .line 50
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->drawHorizontalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->drawVerticalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v0, "Drawable cannot be null."

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setOrientation(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    .line 3
    return-void
.end method
