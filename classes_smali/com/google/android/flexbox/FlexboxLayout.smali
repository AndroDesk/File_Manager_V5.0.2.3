.class public Lcom/google/android/flexbox/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;,
        Lcom/google/android/flexbox/FlexboxLayout$DividerMode;
    }
.end annotation


# static fields
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mAlignContent:I

.field private mAlignItems:I

.field private mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

.field private mDividerHorizontalHeight:I

.field private mDividerVerticalWidth:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field private mJustifyContent:I

.field private mMaxLine:I

.field private mOrderCache:Landroid/util/SparseIntArray;

.field private mReorderedIndices:[I

.field private mShowDividerHorizontal:I

.field private mShowDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 5
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 7
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v1}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 8
    sget-object v1, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexDirection:I

    .line 10
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 11
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexWrap:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 12
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_justifyContent:I

    .line 13
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 14
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignItems:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 15
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignContent:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 16
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_maxLine:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 17
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_60

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_60
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableHorizontal:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_6b

    .line 22
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_6b
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableVertical:I

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_76
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDivider:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_82

    .line 27
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 28
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 29
    :cond_82
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerVertical:I

    .line 30
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_8c

    .line 31
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 32
    :cond_8c
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerHorizontal:I

    .line 33
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_96

    .line 34
    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 35
    :cond_96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    if-ge v1, p1, :cond_16

    .line 5
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_2

    .line 23
    :cond_16
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method private allViewsAreGoneBefore(II)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_2
    if-gt v1, p2, :cond_19

    .line 5
    sub-int v2, p1, v1

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_16

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x8

    .line 19
    if-eq v2, v3, :cond_16

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_2

    .line 26
    :cond_19
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    sub-int/2addr v2, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    move-result v3

    .line 26
    move v4, v1

    .line 27
    :goto_1a
    if-ge v4, v3, :cond_bc

    .line 29
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 31
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 37
    move v6, v1

    .line 38
    :goto_25
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 40
    if-ge v6, v7, :cond_8c

    .line 42
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 44
    add-int/2addr v7, v6

    .line 45
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_89

    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 54
    move-result v9

    .line 55
    const/16 v10, 0x8

    .line 57
    if-ne v9, v10, :cond_3b

    .line 59
    goto :goto_89

    .line 60
    :cond_3b
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 66
    invoke-direct {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_62

    .line 72
    if-eqz p2, :cond_51

    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 77
    move-result v7

    .line 78
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 80
    add-int/2addr v7, v10

    .line 81
    goto :goto_5b

    .line 82
    :cond_51
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 85
    move-result v7

    .line 86
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 88
    sub-int/2addr v7, v10

    .line 89
    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 91
    sub-int/2addr v7, v10

    .line 92
    :goto_5b
    iget v10, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 94
    iget v11, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 96
    invoke-direct {p0, p1, v7, v10, v11}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 99
    :cond_62
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 101
    add-int/lit8 v7, v7, -0x1

    .line 103
    if-ne v6, v7, :cond_89

    .line 105
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 107
    and-int/lit8 v7, v7, 0x4

    .line 109
    if-lez v7, :cond_89

    .line 111
    if-eqz p2, :cond_7b

    .line 113
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 116
    move-result v7

    .line 117
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 119
    sub-int/2addr v7, v8

    .line 120
    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 122
    sub-int/2addr v7, v8

    .line 123
    goto :goto_82

    .line 124
    :cond_7b
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 127
    move-result v7

    .line 128
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 130
    add-int/2addr v7, v8

    .line 131
    :goto_82
    iget v8, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 133
    iget v9, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 135
    invoke-direct {p0, p1, v7, v8, v9}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 138
    :cond_89
    :goto_89
    add-int/lit8 v6, v6, 0x1

    .line 140
    goto :goto_25

    .line 141
    :cond_8c
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_9f

    .line 147
    if-eqz p3, :cond_97

    .line 149
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 151
    goto :goto_9c

    .line 152
    :cond_97
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 154
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 156
    sub-int/2addr v6, v7

    .line 157
    :goto_9c
    invoke-direct {p0, p1, v0, v6, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 160
    :cond_9f
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_b8

    .line 166
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 168
    and-int/lit8 v6, v6, 0x4

    .line 170
    if-lez v6, :cond_b8

    .line 172
    if-eqz p3, :cond_b3

    .line 174
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 176
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 178
    sub-int/2addr v5, v6

    .line 179
    goto :goto_b5

    .line 180
    :cond_b3
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 182
    :goto_b5
    invoke-direct {p0, p1, v0, v5, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 185
    :cond_b8
    add-int/lit8 v4, v4, 0x1

    .line 187
    goto/16 :goto_1a

    .line 189
    :cond_bc
    return-void
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;ZZ)V
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    sub-int/2addr v2, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    move-result v3

    .line 26
    move v4, v1

    .line 27
    :goto_1a
    if-ge v4, v3, :cond_bc

    .line 29
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 31
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 37
    move v6, v1

    .line 38
    :goto_25
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 40
    if-ge v6, v7, :cond_8c

    .line 42
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 44
    add-int/2addr v7, v6

    .line 45
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_89

    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 54
    move-result v9

    .line 55
    const/16 v10, 0x8

    .line 57
    if-ne v9, v10, :cond_3b

    .line 59
    goto :goto_89

    .line 60
    :cond_3b
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 66
    invoke-direct {p0, v7, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_62

    .line 72
    if-eqz p3, :cond_51

    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 77
    move-result v7

    .line 78
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    add-int/2addr v7, v10

    .line 81
    goto :goto_5b

    .line 82
    :cond_51
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 85
    move-result v7

    .line 86
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 88
    sub-int/2addr v7, v10

    .line 89
    iget v10, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 91
    sub-int/2addr v7, v10

    .line 92
    :goto_5b
    iget v10, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 94
    iget v11, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 96
    invoke-direct {p0, p1, v10, v7, v11}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 99
    :cond_62
    iget v7, v5, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 101
    add-int/lit8 v7, v7, -0x1

    .line 103
    if-ne v6, v7, :cond_89

    .line 105
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 107
    and-int/lit8 v7, v7, 0x4

    .line 109
    if-lez v7, :cond_89

    .line 111
    if-eqz p3, :cond_7b

    .line 113
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 116
    move-result v7

    .line 117
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 119
    sub-int/2addr v7, v8

    .line 120
    iget v8, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 122
    sub-int/2addr v7, v8

    .line 123
    goto :goto_82

    .line 124
    :cond_7b
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 127
    move-result v7

    .line 128
    iget v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 130
    add-int/2addr v7, v8

    .line 131
    :goto_82
    iget v8, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 133
    iget v9, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 135
    invoke-direct {p0, p1, v8, v7, v9}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 138
    :cond_89
    :goto_89
    add-int/lit8 v6, v6, 0x1

    .line 140
    goto :goto_25

    .line 141
    :cond_8c
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_9f

    .line 147
    if-eqz p2, :cond_97

    .line 149
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 151
    goto :goto_9c

    .line 152
    :cond_97
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 154
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 156
    sub-int/2addr v6, v7

    .line 157
    :goto_9c
    invoke-direct {p0, p1, v6, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 160
    :cond_9f
    invoke-direct {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_b8

    .line 166
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 168
    and-int/lit8 v6, v6, 0x4

    .line 170
    if-lez v6, :cond_b8

    .line 172
    if-eqz p2, :cond_b3

    .line 174
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 176
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 178
    sub-int/2addr v5, v6

    .line 179
    goto :goto_b5

    .line 180
    :cond_b3
    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 182
    :goto_b5
    invoke-direct {p0, p1, v5, v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 185
    :cond_b8
    add-int/lit8 v4, v4, 0x1

    .line 187
    goto/16 :goto_1a

    .line 189
    :cond_bc
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    add-int/2addr p4, p2

    .line 7
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 9
    add-int/2addr v1, p3

    .line 10
    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 8
    add-int/2addr v1, p2

    .line 9
    add-int/2addr p4, p3

    .line 10
    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_15

    .line 15
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 17
    and-int/2addr p1, v0

    .line 18
    if-eqz p1, :cond_14

    .line 20
    move p2, v0

    .line 21
    :cond_14
    return p2

    .line 22
    :cond_15
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 24
    and-int/2addr p1, v0

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    move p2, v0

    .line 28
    :cond_1b
    return p2

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2a

    .line 35
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 37
    and-int/lit8 p1, p1, 0x2

    .line 39
    if-eqz p1, :cond_29

    .line 41
    move p2, v0

    .line 42
    :cond_29
    return p2

    .line 43
    :cond_2a
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 45
    and-int/lit8 p1, p1, 0x2

    .line 47
    if-eqz p1, :cond_31

    .line 49
    move p2, v0

    .line 50
    :cond_31
    return p2
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3c

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    if-lt p1, v1, :cond_c

    .line 12
    goto :goto_3c

    .line 13
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz p1, :cond_27

    .line 20
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_20

    .line 26
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 28
    and-int/2addr p1, v1

    .line 29
    if-eqz p1, :cond_1f

    .line 31
    move v0, v1

    .line 32
    :cond_1f
    return v0

    .line 33
    :cond_20
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 35
    and-int/2addr p1, v1

    .line 36
    if-eqz p1, :cond_26

    .line 38
    move v0, v1

    .line 39
    :cond_26
    return v0

    .line 40
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_35

    .line 46
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 48
    and-int/lit8 p1, p1, 0x2

    .line 50
    if-eqz p1, :cond_34

    .line 52
    move v0, v1

    .line 53
    :cond_34
    return v0

    .line 54
    :cond_35
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 56
    and-int/lit8 p1, p1, 0x2

    .line 58
    if-eqz p1, :cond_3c

    .line 60
    move v0, v1

    .line 61
    :cond_3c
    :goto_3c
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3d

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    if-lt p1, v1, :cond_c

    .line 12
    goto :goto_3d

    .line 13
    :cond_c
    const/4 v1, 0x1

    .line 14
    add-int/2addr p1, v1

    .line 15
    :goto_e
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    if-ge p1, v2, :cond_28

    .line 23
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 25
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 34
    move-result v2

    .line 35
    if-lez v2, :cond_25

    .line 37
    return v0

    .line 38
    :cond_25
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_e

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_36

    .line 47
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 49
    and-int/lit8 p1, p1, 0x4

    .line 51
    if-eqz p1, :cond_35

    .line 53
    move v0, v1

    .line 54
    :cond_35
    return v0

    .line 55
    :cond_36
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 57
    and-int/lit8 p1, p1, 0x4

    .line 59
    if-eqz p1, :cond_3d

    .line 61
    move v0, v1

    .line 62
    :cond_3d
    :goto_3d
    return v0
.end method

.method private layoutHorizontal(ZIIII)V
    .registers 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 10
    move-result v2

    .line 11
    sub-int v3, p5, p3

    .line 13
    sub-int v4, p4, p2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    move-result v5

    .line 19
    sub-int/2addr v3, v5

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    move-result v5

    .line 24
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 26
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_1e
    if-ge v7, v6, :cond_20b

    .line 33
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 35
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 41
    invoke-direct {v0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_32

    .line 47
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 49
    sub-int/2addr v3, v9

    .line 50
    add-int/2addr v5, v9

    .line 51
    :cond_32
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 53
    const/4 v10, 0x4

    .line 54
    const/4 v11, 0x2

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v15, 0x1

    .line 57
    if-eqz v9, :cond_c8

    .line 59
    if-eq v9, v15, :cond_bd

    .line 61
    const/high16 v13, 0x40000000  # 2.0f

    .line 63
    if-eq v9, v11, :cond_a7

    .line 65
    const/4 v11, 0x3

    .line 66
    if-eq v9, v11, :cond_8f

    .line 68
    if-eq v9, v10, :cond_76

    .line 70
    const/4 v10, 0x5

    .line 71
    if-ne v9, v10, :cond_61

    .line 73
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_58

    .line 79
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 81
    sub-int v10, v4, v10

    .line 83
    int-to-float v10, v10

    .line 84
    add-int/lit8 v9, v9, 0x1

    .line 86
    int-to-float v9, v9

    .line 87
    div-float/2addr v10, v9

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move v10, v12

    .line 90
    :goto_59
    int-to-float v9, v1

    .line 91
    add-float/2addr v9, v10

    .line 92
    sub-int v11, v4, v2

    .line 94
    int-to-float v11, v11

    .line 95
    sub-float/2addr v11, v10

    .line 96
    goto/16 :goto_ce

    .line 98
    :cond_61
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 100
    const-string v2, "Invalid justifyContent is set: "

    .line 102
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v2

    .line 106
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v1

    .line 119
    :cond_76
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_84

    .line 125
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 127
    sub-int v10, v4, v10

    .line 129
    int-to-float v10, v10

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v10, v9

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v10, v12

    .line 134
    :goto_85
    int-to-float v9, v1

    .line 135
    div-float v11, v10, v13

    .line 137
    add-float/2addr v9, v11

    .line 138
    sub-int v13, v4, v2

    .line 140
    int-to-float v13, v13

    .line 141
    sub-float v11, v13, v11

    .line 143
    goto :goto_ce

    .line 144
    :cond_8f
    int-to-float v9, v1

    .line 145
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 148
    move-result v10

    .line 149
    if-eq v10, v15, :cond_9a

    .line 151
    add-int/lit8 v10, v10, -0x1

    .line 153
    int-to-float v10, v10

    .line 154
    goto :goto_9c

    .line 155
    :cond_9a
    const/high16 v10, 0x3f800000  # 1.0f

    .line 157
    :goto_9c
    iget v11, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 159
    sub-int v11, v4, v11

    .line 161
    int-to-float v11, v11

    .line 162
    div-float v10, v11, v10

    .line 164
    sub-int v11, v4, v2

    .line 166
    int-to-float v11, v11

    .line 167
    goto :goto_ce

    .line 168
    :cond_a7
    int-to-float v9, v1

    .line 169
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 171
    sub-int v11, v4, v10

    .line 173
    int-to-float v11, v11

    .line 174
    div-float/2addr v11, v13

    .line 175
    add-float/2addr v11, v9

    .line 176
    sub-int v9, v4, v2

    .line 178
    int-to-float v9, v9

    .line 179
    sub-int v10, v4, v10

    .line 181
    int-to-float v10, v10

    .line 182
    div-float/2addr v10, v13

    .line 183
    sub-float/2addr v9, v10

    .line 184
    move/from16 v25, v11

    .line 186
    move v11, v9

    .line 187
    move/from16 v9, v25

    .line 189
    goto :goto_cd

    .line 190
    :cond_bd
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 192
    sub-int v10, v4, v9

    .line 194
    add-int/2addr v10, v2

    .line 195
    int-to-float v10, v10

    .line 196
    sub-int/2addr v9, v1

    .line 197
    int-to-float v9, v9

    .line 198
    move v11, v9

    .line 199
    move v9, v10

    .line 200
    goto :goto_cd

    .line 201
    :cond_c8
    int-to-float v9, v1

    .line 202
    sub-int v10, v4, v2

    .line 204
    int-to-float v10, v10

    .line 205
    move v11, v10

    .line 206
    :goto_cd
    move v10, v12

    .line 207
    :goto_ce
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    .line 210
    move-result v16

    .line 211
    const/4 v10, 0x0

    .line 212
    move v14, v10

    .line 213
    :goto_d4
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 215
    if-ge v14, v10, :cond_1ff

    .line 217
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 219
    add-int/2addr v10, v14

    .line 220
    invoke-virtual {v0, v10}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 223
    move-result-object v17

    .line 224
    if-eqz v17, :cond_1f1

    .line 226
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    .line 229
    move-result v12

    .line 230
    const/16 v13, 0x8

    .line 232
    if-ne v12, v13, :cond_eb

    .line 234
    goto/16 :goto_1f1

    .line 236
    :cond_eb
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    move-result-object v12

    .line 240
    move-object v13, v12

    .line 241
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 243
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 245
    int-to-float v12, v12

    .line 246
    add-float/2addr v9, v12

    .line 247
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 249
    int-to-float v12, v12

    .line 250
    sub-float/2addr v11, v12

    .line 251
    invoke-direct {v0, v10, v14}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 254
    move-result v10

    .line 255
    if-eqz v10, :cond_106

    .line 257
    iget v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 259
    int-to-float v12, v10

    .line 260
    add-float/2addr v9, v12

    .line 261
    sub-float/2addr v11, v12

    .line 262
    goto :goto_107

    .line 263
    :cond_106
    const/4 v10, 0x0

    .line 264
    :goto_107
    move/from16 v18, v9

    .line 266
    move/from16 v20, v10

    .line 268
    move/from16 v19, v11

    .line 270
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 272
    sub-int/2addr v9, v15

    .line 273
    if-ne v14, v9, :cond_11b

    .line 275
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 277
    and-int/lit8 v9, v9, 0x4

    .line 279
    if-lez v9, :cond_11b

    .line 281
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 283
    goto :goto_11c

    .line 284
    :cond_11b
    const/4 v9, 0x0

    .line 285
    :goto_11c
    move/from16 v21, v9

    .line 287
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 289
    const/4 v10, 0x2

    .line 290
    if-ne v9, v10, :cond_174

    .line 292
    if-eqz p1, :cond_14f

    .line 294
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 296
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 299
    move-result v10

    .line 300
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 303
    move-result v11

    .line 304
    sub-int v12, v10, v11

    .line 306
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 309
    move-result v10

    .line 310
    sub-int v22, v3, v10

    .line 312
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 315
    move-result v23

    .line 316
    move-object/from16 v10, v17

    .line 318
    move-object v11, v8

    .line 319
    move/from16 v24, v1

    .line 321
    move-object v1, v13

    .line 322
    move/from16 v13, v22

    .line 324
    move/from16 v22, v14

    .line 326
    move/from16 v14, v23

    .line 328
    move/from16 v23, v15

    .line 330
    move v15, v3

    .line 331
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 334
    goto/16 :goto_1b8

    .line 336
    :cond_14f
    move/from16 v24, v1

    .line 338
    move-object v1, v13

    .line 339
    move/from16 v22, v14

    .line 341
    move/from16 v23, v15

    .line 343
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 345
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 348
    move-result v12

    .line 349
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 352
    move-result v10

    .line 353
    sub-int v13, v3, v10

    .line 355
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 358
    move-result v10

    .line 359
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 362
    move-result v11

    .line 363
    add-int v14, v11, v10

    .line 365
    move-object/from16 v10, v17

    .line 367
    move-object v11, v8

    .line 368
    move v15, v3

    .line 369
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 372
    goto :goto_1b8

    .line 373
    :cond_174
    move/from16 v24, v1

    .line 375
    move-object v1, v13

    .line 376
    move/from16 v22, v14

    .line 378
    move/from16 v23, v15

    .line 380
    if-eqz p1, :cond_19b

    .line 382
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 384
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 387
    move-result v10

    .line 388
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 391
    move-result v11

    .line 392
    sub-int v12, v10, v11

    .line 394
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 397
    move-result v14

    .line 398
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 401
    move-result v10

    .line 402
    add-int v15, v10, v5

    .line 404
    move-object/from16 v10, v17

    .line 406
    move-object v11, v8

    .line 407
    move v13, v5

    .line 408
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 411
    goto :goto_1b8

    .line 412
    :cond_19b
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 414
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 417
    move-result v12

    .line 418
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 421
    move-result v10

    .line 422
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 425
    move-result v11

    .line 426
    add-int v14, v11, v10

    .line 428
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 431
    move-result v10

    .line 432
    add-int v15, v10, v5

    .line 434
    move-object/from16 v10, v17

    .line 436
    move-object v11, v8

    .line 437
    move v13, v5

    .line 438
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 441
    :goto_1b8
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 444
    move-result v9

    .line 445
    int-to-float v9, v9

    .line 446
    add-float v9, v9, v16

    .line 448
    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 450
    int-to-float v10, v10

    .line 451
    add-float/2addr v9, v10

    .line 452
    add-float v15, v9, v18

    .line 454
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 457
    move-result v9

    .line 458
    int-to-float v9, v9

    .line 459
    add-float v9, v9, v16

    .line 461
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 463
    int-to-float v1, v1

    .line 464
    add-float/2addr v9, v1

    .line 465
    sub-float v19, v19, v9

    .line 467
    if-eqz p1, :cond_1e1

    .line 469
    const/4 v12, 0x0

    .line 470
    const/4 v14, 0x0

    .line 471
    move-object v9, v8

    .line 472
    move-object/from16 v10, v17

    .line 474
    move/from16 v11, v21

    .line 476
    move/from16 v13, v20

    .line 478
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 481
    goto :goto_1ed

    .line 482
    :cond_1e1
    const/4 v12, 0x0

    .line 483
    const/4 v14, 0x0

    .line 484
    move-object v9, v8

    .line 485
    move-object/from16 v10, v17

    .line 487
    move/from16 v11, v20

    .line 489
    move/from16 v13, v21

    .line 491
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 494
    :goto_1ed
    move v9, v15

    .line 495
    move/from16 v11, v19

    .line 497
    goto :goto_1f7

    .line 498
    :cond_1f1
    :goto_1f1
    move/from16 v24, v1

    .line 500
    move/from16 v22, v14

    .line 502
    move/from16 v23, v15

    .line 504
    :goto_1f7
    add-int/lit8 v14, v22, 0x1

    .line 506
    move/from16 v15, v23

    .line 508
    move/from16 v1, v24

    .line 510
    goto/16 :goto_d4

    .line 512
    :cond_1ff
    move/from16 v24, v1

    .line 514
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 516
    add-int/2addr v5, v1

    .line 517
    sub-int/2addr v3, v1

    .line 518
    add-int/lit8 v7, v7, 0x1

    .line 520
    move/from16 v1, v24

    .line 522
    goto/16 :goto_1e

    .line 524
    :cond_20b
    return-void
.end method

.method private layoutVertical(ZZIIII)V
    .registers 34

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    move-result v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    move-result v4

    .line 19
    sub-int v5, p5, p3

    .line 21
    sub-int v6, p6, p4

    .line 23
    sub-int/2addr v5, v3

    .line 24
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    move-result v3

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_1e
    if-ge v7, v3, :cond_1f8

    .line 33
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 35
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 41
    invoke-direct {v0, v7}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_32

    .line 47
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 49
    add-int/2addr v4, v9

    .line 50
    sub-int/2addr v5, v9

    .line 51
    :cond_32
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 53
    const/4 v10, 0x4

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x1

    .line 56
    if-eqz v9, :cond_c5

    .line 58
    if-eq v9, v12, :cond_bd

    .line 60
    const/4 v13, 0x2

    .line 61
    const/high16 v14, 0x40000000  # 2.0f

    .line 63
    if-eq v9, v13, :cond_a7

    .line 65
    const/4 v13, 0x3

    .line 66
    if-eq v9, v13, :cond_8f

    .line 68
    if-eq v9, v10, :cond_76

    .line 70
    const/4 v10, 0x5

    .line 71
    if-ne v9, v10, :cond_61

    .line 73
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_58

    .line 79
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 81
    sub-int v10, v6, v10

    .line 83
    int-to-float v10, v10

    .line 84
    add-int/lit8 v9, v9, 0x1

    .line 86
    int-to-float v9, v9

    .line 87
    div-float/2addr v10, v9

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move v10, v11

    .line 90
    :goto_59
    int-to-float v9, v1

    .line 91
    add-float/2addr v9, v10

    .line 92
    sub-int v12, v6, v2

    .line 94
    int-to-float v12, v12

    .line 95
    sub-float/2addr v12, v10

    .line 96
    goto/16 :goto_cc

    .line 98
    :cond_61
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 100
    const-string v2, "Invalid justifyContent is set: "

    .line 102
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v2

    .line 106
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v1

    .line 119
    :cond_76
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_84

    .line 125
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 127
    sub-int v10, v6, v10

    .line 129
    int-to-float v10, v10

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v10, v9

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v10, v11

    .line 134
    :goto_85
    int-to-float v9, v1

    .line 135
    div-float v12, v10, v14

    .line 137
    add-float/2addr v9, v12

    .line 138
    sub-int v13, v6, v2

    .line 140
    int-to-float v13, v13

    .line 141
    sub-float v12, v13, v12

    .line 143
    goto :goto_cc

    .line 144
    :cond_8f
    int-to-float v9, v1

    .line 145
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 148
    move-result v10

    .line 149
    if-eq v10, v12, :cond_9a

    .line 151
    add-int/lit8 v10, v10, -0x1

    .line 153
    int-to-float v10, v10

    .line 154
    goto :goto_9c

    .line 155
    :cond_9a
    const/high16 v10, 0x3f800000  # 1.0f

    .line 157
    :goto_9c
    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 159
    sub-int v12, v6, v12

    .line 161
    int-to-float v12, v12

    .line 162
    div-float v10, v12, v10

    .line 164
    sub-int v12, v6, v2

    .line 166
    int-to-float v12, v12

    .line 167
    goto :goto_cc

    .line 168
    :cond_a7
    int-to-float v9, v1

    .line 169
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 171
    sub-int v12, v6, v10

    .line 173
    int-to-float v12, v12

    .line 174
    div-float/2addr v12, v14

    .line 175
    add-float/2addr v12, v9

    .line 176
    sub-int v9, v6, v2

    .line 178
    int-to-float v9, v9

    .line 179
    sub-int v10, v6, v10

    .line 181
    int-to-float v10, v10

    .line 182
    div-float/2addr v10, v14

    .line 183
    sub-float/2addr v9, v10

    .line 184
    move/from16 v26, v12

    .line 186
    move v12, v9

    .line 187
    move/from16 v9, v26

    .line 189
    goto :goto_cb

    .line 190
    :cond_bd
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 192
    sub-int v10, v6, v9

    .line 194
    add-int/2addr v10, v2

    .line 195
    int-to-float v10, v10

    .line 196
    sub-int/2addr v9, v1

    .line 197
    goto :goto_c8

    .line 198
    :cond_c5
    int-to-float v10, v1

    .line 199
    sub-int v9, v6, v2

    .line 201
    :goto_c8
    int-to-float v9, v9

    .line 202
    move v12, v9

    .line 203
    move v9, v10

    .line 204
    :goto_cb
    move v10, v11

    .line 205
    :goto_cc
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 208
    move-result v17

    .line 209
    const/4 v10, 0x0

    .line 210
    move v15, v10

    .line 211
    :goto_d2
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 213
    if-ge v15, v10, :cond_1f0

    .line 215
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 217
    add-int/2addr v10, v15

    .line 218
    invoke-virtual {v0, v10}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 221
    move-result-object v18

    .line 222
    if-eqz v18, :cond_1ea

    .line 224
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    .line 227
    move-result v11

    .line 228
    const/16 v13, 0x8

    .line 230
    if-ne v11, v13, :cond_e9

    .line 232
    goto/16 :goto_1ea

    .line 234
    :cond_e9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    move-result-object v11

    .line 238
    move-object v14, v11

    .line 239
    check-cast v14, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 241
    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 243
    int-to-float v11, v11

    .line 244
    add-float/2addr v9, v11

    .line 245
    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 247
    int-to-float v11, v11

    .line 248
    sub-float/2addr v12, v11

    .line 249
    invoke-direct {v0, v10, v15}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_104

    .line 255
    iget v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 257
    int-to-float v11, v10

    .line 258
    add-float/2addr v9, v11

    .line 259
    sub-float/2addr v12, v11

    .line 260
    goto :goto_105

    .line 261
    :cond_104
    const/4 v10, 0x0

    .line 262
    :goto_105
    move/from16 v19, v9

    .line 264
    move/from16 v21, v10

    .line 266
    move/from16 v20, v12

    .line 268
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 270
    add-int/lit8 v9, v9, -0x1

    .line 272
    if-ne v15, v9, :cond_11a

    .line 274
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 276
    and-int/lit8 v9, v9, 0x4

    .line 278
    if-lez v9, :cond_11a

    .line 280
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    const/4 v9, 0x0

    .line 284
    :goto_11b
    move/from16 v22, v9

    .line 286
    if-eqz p1, :cond_16c

    .line 288
    if-eqz p2, :cond_149

    .line 290
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 292
    const/4 v12, 0x1

    .line 293
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    .line 296
    move-result v10

    .line 297
    sub-int v13, v5, v10

    .line 299
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 302
    move-result v10

    .line 303
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 306
    move-result v11

    .line 307
    sub-int v16, v10, v11

    .line 309
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 312
    move-result v23

    .line 313
    move-object/from16 v10, v18

    .line 315
    move-object v11, v8

    .line 316
    move-object/from16 v24, v14

    .line 318
    move/from16 v14, v16

    .line 320
    move/from16 v25, v15

    .line 322
    move v15, v5

    .line 323
    move/from16 v16, v23

    .line 325
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 328
    goto/16 :goto_1af

    .line 330
    :cond_149
    move-object/from16 v24, v14

    .line 332
    move/from16 v25, v15

    .line 334
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 336
    const/4 v12, 0x1

    .line 337
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    .line 340
    move-result v10

    .line 341
    sub-int v13, v5, v10

    .line 343
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 346
    move-result v14

    .line 347
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 350
    move-result v10

    .line 351
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 354
    move-result v11

    .line 355
    add-int v16, v11, v10

    .line 357
    move-object/from16 v10, v18

    .line 359
    move-object v11, v8

    .line 360
    move v15, v5

    .line 361
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 364
    goto :goto_1af

    .line 365
    :cond_16c
    move-object/from16 v24, v14

    .line 367
    move/from16 v25, v15

    .line 369
    if-eqz p2, :cond_191

    .line 371
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 373
    const/4 v12, 0x0

    .line 374
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 377
    move-result v10

    .line 378
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 381
    move-result v11

    .line 382
    sub-int v14, v10, v11

    .line 384
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    .line 387
    move-result v10

    .line 388
    add-int v15, v10, v4

    .line 390
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 393
    move-result v16

    .line 394
    move-object/from16 v10, v18

    .line 396
    move-object v11, v8

    .line 397
    move v13, v4

    .line 398
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 401
    goto :goto_1af

    .line 402
    :cond_191
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 404
    const/4 v12, 0x0

    .line 405
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 408
    move-result v14

    .line 409
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    .line 412
    move-result v10

    .line 413
    add-int v15, v10, v4

    .line 415
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 418
    move-result v10

    .line 419
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 422
    move-result v11

    .line 423
    add-int v16, v11, v10

    .line 425
    move-object/from16 v10, v18

    .line 427
    move-object v11, v8

    .line 428
    move v13, v4

    .line 429
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 432
    :goto_1af
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 435
    move-result v9

    .line 436
    int-to-float v9, v9

    .line 437
    add-float v9, v9, v17

    .line 439
    move-object/from16 v11, v24

    .line 441
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 443
    int-to-float v10, v10

    .line 444
    add-float/2addr v9, v10

    .line 445
    add-float v15, v9, v19

    .line 447
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 450
    move-result v9

    .line 451
    int-to-float v9, v9

    .line 452
    add-float v9, v9, v17

    .line 454
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 456
    int-to-float v10, v10

    .line 457
    add-float/2addr v9, v10

    .line 458
    sub-float v20, v20, v9

    .line 460
    if-eqz p2, :cond_1da

    .line 462
    const/4 v11, 0x0

    .line 463
    const/4 v13, 0x0

    .line 464
    move-object v9, v8

    .line 465
    move-object/from16 v10, v18

    .line 467
    move/from16 v12, v22

    .line 469
    move/from16 v14, v21

    .line 471
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 474
    goto :goto_1e6

    .line 475
    :cond_1da
    const/4 v11, 0x0

    .line 476
    const/4 v13, 0x0

    .line 477
    move-object v9, v8

    .line 478
    move-object/from16 v10, v18

    .line 480
    move/from16 v12, v21

    .line 482
    move/from16 v14, v22

    .line 484
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 487
    :goto_1e6
    move v9, v15

    .line 488
    move/from16 v12, v20

    .line 490
    goto :goto_1ec

    .line 491
    :cond_1ea
    :goto_1ea
    move/from16 v25, v15

    .line 493
    :goto_1ec
    add-int/lit8 v15, v25, 0x1

    .line 495
    goto/16 :goto_d2

    .line 497
    :cond_1f0
    iget v8, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 499
    add-int/2addr v4, v8

    .line 500
    sub-int/2addr v5, v8

    .line 501
    add-int/lit8 v7, v7, 0x1

    .line 503
    goto/16 :goto_1e

    .line 505
    :cond_1f8
    return-void
.end method

.method private measureHorizontal(II)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 15
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 18
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 20
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 29
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 31
    const/4 v1, 0x3

    .line 32
    if-ne v0, v1, :cond_95

    .line 34
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_95

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 52
    const/high16 v2, -0x80000000

    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_36
    iget v4, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 57
    if-ge v3, v4, :cond_92

    .line 59
    iget v4, v1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 61
    add-int/2addr v4, v3

    .line 62
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_8f

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 71
    move-result v5

    .line 72
    const/16 v6, 0x8

    .line 74
    if-ne v5, v6, :cond_4c

    .line 76
    goto :goto_8f

    .line 77
    :cond_4c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 83
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 85
    const/4 v7, 0x2

    .line 86
    if-eq v6, v7, :cond_71

    .line 88
    iget v6, v1, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    .line 93
    move-result v7

    .line 94
    sub-int/2addr v6, v7

    .line 95
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 97
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 100
    move-result v6

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    move-result v4

    .line 105
    add-int/2addr v4, v6

    .line 106
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 108
    add-int/2addr v4, v5

    .line 109
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 112
    move-result v2

    .line 113
    goto :goto_8f

    .line 114
    :cond_71
    iget v6, v1, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    move-result v7

    .line 120
    sub-int/2addr v6, v7

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    .line 124
    move-result v7

    .line 125
    add-int/2addr v7, v6

    .line 126
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 128
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 131
    move-result v6

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 135
    move-result v4

    .line 136
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 138
    add-int/2addr v4, v5

    .line 139
    add-int/2addr v4, v6

    .line 140
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 143
    move-result v2

    .line 144
    :cond_8f
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    .line 146
    goto :goto_36

    .line 147
    :cond_92
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 149
    goto :goto_27

    .line 150
    :cond_95
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 155
    move-result v1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 159
    move-result v2

    .line 160
    add-int/2addr v2, v1

    .line 161
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 164
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 169
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 171
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 173
    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 175
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 178
    return-void
.end method

.method private measureVertical(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 15
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 18
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 20
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 29
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v1

    .line 40
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 43
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 48
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 50
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 52
    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 54
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 57
    return-void
.end method

.method private setMeasuredDimensionForFlex(IIII)V
    .registers 13

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v2

    .line 13
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result v3

    .line 17
    if-eqz p1, :cond_3b

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq p1, v4, :cond_3b

    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq p1, v4, :cond_28

    .line 25
    const/4 v4, 0x3

    .line 26
    if-ne p1, v4, :cond_1c

    .line 28
    goto :goto_28

    .line 29
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string p3, "Invalid flex direction: "

    .line 33
    invoke-static {p3, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p2

    .line 41
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    .line 48
    move-result v4

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    move-result v5

    .line 53
    add-int/2addr v5, v4

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 57
    move-result v4

    .line 58
    add-int/2addr v4, v5

    .line 59
    goto :goto_4d

    .line 60
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 67
    move-result v4

    .line 68
    add-int/2addr v4, p1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 72
    move-result p1

    .line 73
    add-int/2addr p1, v4

    .line 74
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    .line 77
    move-result v4

    .line 78
    :goto_4d
    const/high16 v5, 0x1000000

    .line 80
    const/high16 v6, 0x40000000  # 2.0f

    .line 82
    const/high16 v7, -0x80000000

    .line 84
    if-eq v0, v7, :cond_75

    .line 86
    if-eqz v0, :cond_70

    .line 88
    if-ne v0, v6, :cond_64

    .line 90
    if-ge v1, v4, :cond_5f

    .line 92
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 95
    move-result p4

    .line 96
    :cond_5f
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 99
    move-result p2

    .line 100
    goto :goto_81

    .line 101
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    const-string p2, "Unknown width mode is set: "

    .line 105
    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p1

    .line 113
    :cond_70
    invoke-static {v4, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 116
    move-result p2

    .line 117
    goto :goto_81

    .line 118
    :cond_75
    if-ge v1, v4, :cond_7c

    .line 120
    invoke-static {p4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 123
    move-result p4

    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move v1, v4

    .line 126
    :goto_7d
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 129
    move-result p2

    .line 130
    :goto_81
    const/16 v0, 0x100

    .line 132
    if-eq v2, v7, :cond_a5

    .line 134
    if-eqz v2, :cond_a0

    .line 136
    if-ne v2, v6, :cond_94

    .line 138
    if-ge v3, p1, :cond_8f

    .line 140
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 143
    move-result p4

    .line 144
    :cond_8f
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 147
    move-result p1

    .line 148
    goto :goto_b1

    .line 149
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 151
    const-string p2, "Unknown height mode is set: "

    .line 153
    invoke-static {p2, v2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p1

    .line 161
    :cond_a0
    invoke-static {p1, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 164
    move-result p1

    .line 165
    goto :goto_b1

    .line 166
    :cond_a5
    if-ge v3, p1, :cond_ac

    .line 168
    invoke-static {p4, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 171
    move-result p4

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move v3, p1

    .line 174
    :goto_ad
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 177
    move-result p1

    .line 178
    :goto_b1
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 181
    return-void
.end method

.method private setWillNotDrawFlag()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_d

    .line 5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 7
    if-nez v0, :cond_d

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 18
    :goto_11
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 18
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 29
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 3
    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 3
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 4
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 5
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 6
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7
    :cond_18
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .registers 4

    .line 2
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 3
    return v0
.end method

.method public getAlignItems()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 3
    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getChildWidthMeasureSpec(III)I
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_19

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_10

    .line 14
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 16
    add-int/2addr v0, p1

    .line 17
    :cond_10
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 19
    and-int/lit8 p1, p1, 0x4

    .line 21
    if-lez p1, :cond_2b

    .line 23
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 25
    goto :goto_2a

    .line 26
    :cond_19
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_22

    .line 32
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 34
    add-int/2addr v0, p1

    .line 35
    :cond_22
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 37
    and-int/lit8 p1, p1, 0x4

    .line 39
    if-lez p1, :cond_2b

    .line 41
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 43
    :goto_2a
    add-int/2addr v0, p1

    .line 44
    :cond_2b
    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getFlexDirection()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 3
    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getFlexItemCount()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_28

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_24

    .line 36
    goto :goto_11

    .line 37
    :cond_24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_11

    .line 41
    :cond_28
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getFlexWrap()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 3
    return v0
.end method

.method public getJustifyContent()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 3
    return v0
.end method

.method public getLargestMainSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, -0x80000000

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1b

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 21
    iget v2, v2, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v1

    .line 27
    goto :goto_8

    .line 28
    :cond_1b
    return v1
.end method

.method public getMaxLine()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 3
    return v0
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .registers 4

    .line 1
    if-ltz p1, :cond_f

    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    aget p1, v0, p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getShowDividerHorizontal()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 3
    return v0
.end method

.method public getShowDividerVertical()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 3
    return v0
.end method

.method public getSumOfCrossSize()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v1, v0, :cond_3c

    .line 11
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_24

    .line 25
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_21

    .line 31
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 36
    :goto_23
    add-int/2addr v2, v4

    .line 37
    :cond_24
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_36

    .line 43
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_33

    .line 49
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 54
    :goto_35
    add-int/2addr v2, v4

    .line 55
    :cond_36
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 57
    add-int/2addr v2, v3

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_8

    .line 61
    :cond_3c
    return v2
.end method

.method public isMainAxisDirectionHorizontal()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_9

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :cond_9
    :goto_9
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 12
    if-nez v0, :cond_12

    .line 14
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v1, :cond_50

    .line 32
    if-eq v1, v4, :cond_42

    .line 34
    if-eq v1, v2, :cond_34

    .line 36
    const/4 v5, 0x3

    .line 37
    if-eq v1, v5, :cond_27

    .line 39
    goto :goto_5d

    .line 40
    :cond_27
    if-ne v0, v4, :cond_2a

    .line 42
    move v3, v4

    .line 43
    :cond_2a
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 45
    if-ne v0, v2, :cond_30

    .line 47
    xor-int/lit8 v3, v3, 0x1

    .line 49
    :cond_30
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 52
    goto :goto_5d

    .line 53
    :cond_34
    if-ne v0, v4, :cond_37

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v4, v3

    .line 57
    :goto_38
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 59
    if-ne v0, v2, :cond_3e

    .line 61
    xor-int/lit8 v4, v4, 0x1

    .line 63
    :cond_3e
    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 66
    goto :goto_5d

    .line 67
    :cond_42
    if-eq v0, v4, :cond_46

    .line 69
    move v0, v4

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v0, v3

    .line 72
    :goto_47
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 74
    if-ne v1, v2, :cond_4c

    .line 76
    move v3, v4

    .line 77
    :cond_4c
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 80
    goto :goto_5d

    .line 81
    :cond_50
    if-ne v0, v4, :cond_54

    .line 83
    move v0, v4

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v0, v3

    .line 86
    :goto_55
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 88
    if-ne v1, v2, :cond_5a

    .line 90
    move v3, v4

    .line 91
    :cond_5a
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 94
    :goto_5d
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_64

    .line 13
    if-eq v1, v3, :cond_56

    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v1, v4, :cond_40

    .line 18
    const/4 v5, 0x3

    .line 19
    if-ne v1, v5, :cond_2b

    .line 21
    if-ne v0, v3, :cond_17

    .line 23
    move v2, v3

    .line 24
    :cond_17
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 26
    if-ne v0, v4, :cond_1f

    .line 28
    xor-int/lit8 v0, v2, 0x1

    .line 30
    move v1, v0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v1, v2

    .line 33
    :goto_20
    const/4 v2, 0x1

    .line 34
    move-object v0, p0

    .line 35
    move v3, p2

    .line 36
    move v4, p3

    .line 37
    move v5, p4

    .line 38
    move v6, p5

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 42
    goto/16 :goto_71

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    const-string v1, "Invalid flex direction is set: "

    .line 48
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v1

    .line 52
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0

    .line 65
    :cond_40
    if-ne v0, v3, :cond_43

    .line 67
    move v2, v3

    .line 68
    :cond_43
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 70
    if-ne v0, v4, :cond_4b

    .line 72
    xor-int/lit8 v0, v2, 0x1

    .line 74
    move v1, v0

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v1, v2

    .line 77
    :goto_4c
    const/4 v2, 0x0

    .line 78
    move-object v0, p0

    .line 79
    move v3, p2

    .line 80
    move v4, p3

    .line 81
    move v5, p4

    .line 82
    move v6, p5

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 86
    goto :goto_71

    .line 87
    :cond_56
    if-eq v0, v3, :cond_5a

    .line 89
    move v1, v3

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v1, v2

    .line 92
    :goto_5b
    move-object v0, p0

    .line 93
    move v2, p2

    .line 94
    move v3, p3

    .line 95
    move v4, p4

    .line 96
    move v5, p5

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 100
    goto :goto_71

    .line 101
    :cond_64
    if-ne v0, v3, :cond_68

    .line 103
    move v1, v3

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v1, v2

    .line 106
    :goto_69
    move-object v0, p0

    .line 107
    move v2, p2

    .line 108
    move v3, p3

    .line 109
    move v4, p4

    .line 110
    move v5, p5

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 114
    :goto_71
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 18
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_23

    .line 26
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 28
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/util/SparseIntArray;)[I

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 36
    :cond_23
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 38
    if-eqz v0, :cond_4a

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq v0, v1, :cond_4a

    .line 43
    const/4 v1, 0x2

    .line 44
    if-eq v0, v1, :cond_46

    .line 46
    const/4 v1, 0x3

    .line 47
    if-ne v0, v1, :cond_31

    .line 49
    goto :goto_46

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    const-string p2, "Invalid value for the flex direction is set: "

    .line 54
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p2

    .line 58
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    :cond_46
    :goto_46
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureVertical(II)V

    .line 74
    goto :goto_4d

    .line 75
    :cond_4a
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureHorizontal(II)V

    .line 78
    :goto_4d
    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V
    .registers 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_25

    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_19

    .line 13
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 15
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 17
    add-int/2addr p1, p2

    .line 18
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 20
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 22
    add-int/2addr p1, p2

    .line 23
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 25
    goto :goto_25

    .line 26
    :cond_19
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 28
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 30
    add-int/2addr p1, p2

    .line 31
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 33
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 35
    add-int/2addr p1, p2

    .line 36
    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 9
    and-int/lit8 v0, v0, 0x4

    .line 11
    if-lez v0, :cond_2b

    .line 13
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 15
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 17
    add-int/2addr v0, v1

    .line 18
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 20
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 22
    add-int/2addr v0, v1

    .line 23
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 25
    goto :goto_2b

    .line 26
    :cond_19
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 28
    and-int/lit8 v0, v0, 0x4

    .line 30
    if-lez v0, :cond_2b

    .line 32
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 34
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 39
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 41
    add-int/2addr v0, v1

    .line 42
    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method

.method public setAlignContent(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setAlignItems(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz p1, :cond_10

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 20
    :goto_13
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 26
    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz p1, :cond_10

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 20
    :goto_13
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 26
    return-void
.end method

.method public setFlexDirection(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setFlexWrap(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setJustifyContent(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setMaxLine(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mMaxLine:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setShowDivider(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 7
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setShowDividerVertical(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .registers 3

    return-void
.end method
