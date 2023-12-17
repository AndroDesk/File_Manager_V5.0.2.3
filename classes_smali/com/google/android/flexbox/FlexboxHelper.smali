.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/flexbox/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final MEASURE_SPEC_WIDTH_MASK:J = 0xffffffffL


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field public mIndexToFlexLine:[I

.field public mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method public constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 6
    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 1
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 3
    iget-object p4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 5
    invoke-interface {p4, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    .line 8
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v2

    .line 15
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ge v1, v3, :cond_1b

    .line 22
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 25
    move-result v1

    .line 26
    :goto_19
    move v3, v4

    .line 27
    goto :goto_27

    .line 28
    :cond_1b
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 31
    move-result v3

    .line 32
    if-le v1, v3, :cond_26

    .line 34
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 37
    move-result v1

    .line 38
    goto :goto_19

    .line 39
    :cond_26
    const/4 v3, 0x0

    .line 40
    :goto_27
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 43
    move-result v5

    .line 44
    if-ge v2, v5, :cond_32

    .line 46
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 49
    move-result v2

    .line 50
    goto :goto_3e

    .line 51
    :cond_32
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 54
    move-result v5

    .line 55
    if-le v2, v5, :cond_3d

    .line 57
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 60
    move-result v2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v4, v3

    .line 63
    :goto_3e
    if-eqz v4, :cond_55

    .line 65
    const/high16 v0, 0x40000000  # 2.0f

    .line 67
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result v1

    .line 71
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 78
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 83
    invoke-interface {v0, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 86
    :cond_55
    return-void
.end method

.method private constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1
    sub-int/2addr p2, p3

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v0, Lcom/google/android/flexbox/FlexLine;

    .line 11
    invoke-direct {v0}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 14
    iput p2, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result p2

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_14
    if-ge v1, p2, :cond_32

    .line 23
    if-nez v1, :cond_1b

    .line 25
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 34
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 43
    if-ne v1, v2, :cond_2f

    .line 45
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_14

    .line 51
    :cond_32
    return-object p3
.end method

.method private createOrders(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    if-ge v1, p1, :cond_28

    .line 9
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 11
    invoke-interface {v2, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 21
    new-instance v3, Lcom/google/android/flexbox/FlexboxHelper$Order;

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v3, v4}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    .line 27
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    .line 30
    move-result v2

    .line 31
    iput v2, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 33
    iput v1, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_6

    .line 41
    :cond_28
    return-object v0
.end method

.method private ensureChildrenFrozen(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 3
    if-nez v0, :cond_e

    .line 5
    const/16 v0, 0xa

    .line 7
    if-ge p1, v0, :cond_9

    .line 9
    move p1, v0

    .line 10
    :cond_9
    new-array p1, p1, [Z

    .line 12
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 14
    goto :goto_20

    .line 15
    :cond_e
    array-length v1, v0

    .line 16
    if-ge v1, p1, :cond_1c

    .line 18
    array-length v0, v0

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 21
    if-lt v0, p1, :cond_17

    .line 23
    move p1, v0

    .line 24
    :cond_17
    new-array p1, p1, [Z

    .line 26
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 33
    :goto_20
    return-void
.end method

.method private evaluateMinimumSizeForCompoundButton(Landroid/widget/CompoundButton;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 10
    move-result v1

    .line 11
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 14
    move-result v2

    .line 15
    invoke-static {p1}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez p1, :cond_17

    .line 22
    move v4, v3

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 27
    move-result v4

    .line 28
    :goto_1b
    if-nez p1, :cond_1e

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 34
    move-result v3

    .line 35
    :goto_22
    const/4 p1, -0x1

    .line 36
    if-ne v1, p1, :cond_26

    .line 38
    move v1, v4

    .line 39
    :cond_26
    invoke-interface {v0, v1}, Lcom/google/android/flexbox/FlexItem;->setMinWidth(I)V

    .line 42
    if-ne v2, p1, :cond_2c

    .line 44
    move v2, v3

    .line 45
    :cond_2c
    invoke-interface {v0, v2}, Lcom/google/android/flexbox/FlexItem;->setMinHeight(I)V

    .line 48
    return-void
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .registers 29

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v3, p3

    .line 5
    move/from16 v4, p4

    .line 7
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v2, v0, v1

    .line 12
    if-lez v2, :cond_20b

    .line 14
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 16
    if-ge v4, v2, :cond_13

    .line 18
    goto/16 :goto_20b

    .line 20
    :cond_13
    sub-int v5, v4, v2

    .line 22
    int-to-float v5, v5

    .line 23
    div-float/2addr v5, v0

    .line 24
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 26
    add-int v0, p5, v0

    .line 28
    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 30
    if-nez p6, :cond_23

    .line 32
    const/high16 v0, -0x80000000

    .line 34
    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    move v6, v0

    .line 38
    move v8, v6

    .line 39
    move v9, v1

    .line 40
    :goto_27
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 42
    if-ge v0, v10, :cond_1ef

    .line 44
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 46
    add-int/2addr v10, v0

    .line 47
    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 49
    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    .line 52
    move-result-object v11

    .line 53
    if-eqz v11, :cond_1e4

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v12

    .line 59
    const/16 v13, 0x8

    .line 61
    if-ne v12, v13, :cond_40

    .line 63
    goto/16 :goto_1e4

    .line 65
    :cond_40
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 71
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 73
    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    .line 76
    move-result v13

    .line 77
    const-wide/high16 v17, 0x3ff0000000000000L  # 1.0

    .line 79
    const/4 v14, 0x1

    .line 80
    if-eqz v13, :cond_119

    .line 82
    if-ne v13, v14, :cond_55

    .line 84
    goto/16 :goto_119

    .line 86
    :cond_55
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result v13

    .line 90
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 92
    if-eqz v15, :cond_63

    .line 94
    aget-wide v14, v15, v10

    .line 96
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 99
    move-result v13

    .line 100
    :cond_63
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 103
    move-result v14

    .line 104
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 106
    if-eqz v15, :cond_71

    .line 108
    aget-wide v14, v15, v10

    .line 110
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 113
    move-result v14

    .line 114
    :cond_71
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 116
    aget-boolean v15, v15, v10

    .line 118
    if-nez v15, :cond_ec

    .line 120
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 123
    move-result v15

    .line 124
    cmpl-float v15, v15, v1

    .line 126
    if-lez v15, :cond_ec

    .line 128
    int-to-float v13, v13

    .line 129
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 132
    move-result v14

    .line 133
    mul-float/2addr v14, v5

    .line 134
    add-float/2addr v14, v13

    .line 135
    iget v13, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 137
    const/4 v15, 0x1

    .line 138
    sub-int/2addr v13, v15

    .line 139
    if-ne v0, v13, :cond_8e

    .line 141
    add-float/2addr v14, v9

    .line 142
    move v9, v1

    .line 143
    :cond_8e
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 146
    move-result v13

    .line 147
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 150
    move-result v1

    .line 151
    if-le v13, v1, :cond_ac

    .line 153
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 156
    move-result v13

    .line 157
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 159
    aput-boolean v15, v1, v10

    .line 161
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 163
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 166
    move-result v6

    .line 167
    sub-float/2addr v1, v6

    .line 168
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 170
    move v15, v2

    .line 171
    const/4 v6, 0x1

    .line 172
    goto :goto_c8

    .line 173
    :cond_ac
    int-to-float v1, v13

    .line 174
    sub-float/2addr v14, v1

    .line 175
    add-float/2addr v14, v9

    .line 176
    move v15, v2

    .line 177
    float-to-double v1, v14

    .line 178
    cmpl-double v9, v1, v17

    .line 180
    if-lez v9, :cond_bc

    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 184
    sub-double v1, v1, v17

    .line 186
    :goto_b9
    double-to-float v1, v1

    .line 187
    move v9, v1

    .line 188
    goto :goto_c8

    .line 189
    :cond_bc
    const-wide/high16 v19, -0x4010000000000000L  # -1.0

    .line 191
    cmpg-double v9, v1, v19

    .line 193
    if-gez v9, :cond_c7

    .line 195
    add-int/lit8 v13, v13, -0x1

    .line 197
    add-double v1, v1, v17

    .line 199
    goto :goto_b9

    .line 200
    :cond_c7
    move v9, v14

    .line 201
    :goto_c8
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 203
    move/from16 v2, p1

    .line 205
    invoke-direct {v7, v2, v12, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    .line 208
    move-result v1

    .line 209
    const/high16 v14, 0x40000000  # 2.0f

    .line 211
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 214
    move-result v13

    .line 215
    invoke-virtual {v11, v1, v13}, Landroid/view/View;->measure(II)V

    .line 218
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 221
    move-result v14

    .line 222
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 225
    move-result v16

    .line 226
    invoke-direct {v7, v10, v1, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 229
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 231
    invoke-interface {v1, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 234
    move/from16 v13, v16

    .line 236
    goto :goto_ef

    .line 237
    :cond_ec
    move v15, v2

    .line 238
    move/from16 v2, p1

    .line 240
    :goto_ef
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 243
    move-result v1

    .line 244
    add-int/2addr v14, v1

    .line 245
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 248
    move-result v1

    .line 249
    add-int/2addr v14, v1

    .line 250
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 252
    invoke-interface {v1, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 255
    move-result v1

    .line 256
    add-int/2addr v14, v1

    .line 257
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 260
    move-result v1

    .line 261
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 263
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 266
    move-result v10

    .line 267
    add-int/2addr v13, v10

    .line 268
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 271
    move-result v10

    .line 272
    add-int/2addr v13, v10

    .line 273
    add-int/2addr v13, v8

    .line 274
    iput v13, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 276
    move/from16 v13, p2

    .line 278
    move/from16 v21, v15

    .line 280
    goto/16 :goto_1da

    .line 282
    :cond_119
    :goto_119
    move v15, v2

    .line 283
    move/from16 v2, p1

    .line 285
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 288
    move-result v1

    .line 289
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 291
    if-eqz v13, :cond_12a

    .line 293
    aget-wide v1, v13, v10

    .line 295
    invoke-virtual {v7, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 298
    move-result v1

    .line 299
    :cond_12a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 302
    move-result v2

    .line 303
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 305
    move/from16 v21, v15

    .line 307
    if-eqz v13, :cond_13a

    .line 309
    aget-wide v14, v13, v10

    .line 311
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 314
    move-result v2

    .line 315
    :cond_13a
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 317
    aget-boolean v13, v13, v10

    .line 319
    if-nez v13, :cond_1b3

    .line 321
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 324
    move-result v13

    .line 325
    const/4 v14, 0x0

    .line 326
    cmpl-float v13, v13, v14

    .line 328
    if-lez v13, :cond_1b3

    .line 330
    int-to-float v1, v1

    .line 331
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 334
    move-result v2

    .line 335
    mul-float/2addr v2, v5

    .line 336
    add-float/2addr v2, v1

    .line 337
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 339
    const/4 v13, 0x1

    .line 340
    sub-int/2addr v1, v13

    .line 341
    if-ne v0, v1, :cond_158

    .line 343
    add-float/2addr v2, v9

    .line 344
    move v9, v14

    .line 345
    :cond_158
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 348
    move-result v1

    .line 349
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 352
    move-result v15

    .line 353
    if-le v1, v15, :cond_175

    .line 355
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 358
    move-result v1

    .line 359
    iget-object v2, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 361
    aput-boolean v13, v2, v10

    .line 363
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 365
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 368
    move-result v6

    .line 369
    sub-float/2addr v2, v6

    .line 370
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 372
    move v6, v13

    .line 373
    goto :goto_18f

    .line 374
    :cond_175
    int-to-float v13, v1

    .line 375
    sub-float/2addr v2, v13

    .line 376
    add-float/2addr v2, v9

    .line 377
    float-to-double v14, v2

    .line 378
    cmpl-double v9, v14, v17

    .line 380
    if-lez v9, :cond_183

    .line 382
    add-int/lit8 v1, v1, 0x1

    .line 384
    sub-double v14, v14, v17

    .line 386
    :goto_181
    double-to-float v2, v14

    .line 387
    goto :goto_18e

    .line 388
    :cond_183
    const-wide/high16 v19, -0x4010000000000000L  # -1.0

    .line 390
    cmpg-double v9, v14, v19

    .line 392
    if-gez v9, :cond_18e

    .line 394
    add-int/lit8 v1, v1, -0x1

    .line 396
    add-double v14, v14, v17

    .line 398
    goto :goto_181

    .line 399
    :cond_18e
    :goto_18e
    move v9, v2

    .line 400
    :goto_18f
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 402
    move/from16 v13, p2

    .line 404
    invoke-direct {v7, v13, v12, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    .line 407
    move-result v2

    .line 408
    const/high16 v14, 0x40000000  # 2.0f

    .line 410
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 413
    move-result v1

    .line 414
    invoke-virtual {v11, v1, v2}, Landroid/view/View;->measure(II)V

    .line 417
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 420
    move-result v14

    .line 421
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 424
    move-result v15

    .line 425
    invoke-direct {v7, v10, v1, v2, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 428
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 430
    invoke-interface {v1, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 433
    move v1, v14

    .line 434
    move v2, v15

    .line 435
    goto :goto_1b5

    .line 436
    :cond_1b3
    move/from16 v13, p2

    .line 438
    :goto_1b5
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 441
    move-result v10

    .line 442
    add-int/2addr v2, v10

    .line 443
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 446
    move-result v10

    .line 447
    add-int/2addr v2, v10

    .line 448
    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 450
    invoke-interface {v10, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 453
    move-result v10

    .line 454
    add-int/2addr v2, v10

    .line 455
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 458
    move-result v2

    .line 459
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 461
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 464
    move-result v10

    .line 465
    add-int/2addr v1, v10

    .line 466
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 469
    move-result v10

    .line 470
    add-int/2addr v1, v10

    .line 471
    add-int/2addr v1, v8

    .line 472
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 474
    move v1, v2

    .line 475
    :goto_1da
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 477
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 480
    move-result v2

    .line 481
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 483
    move v8, v1

    .line 484
    goto :goto_1e8

    .line 485
    :cond_1e4
    :goto_1e4
    move/from16 v13, p2

    .line 487
    move/from16 v21, v2

    .line 489
    :goto_1e8
    add-int/lit8 v0, v0, 0x1

    .line 491
    move/from16 v2, v21

    .line 493
    const/4 v1, 0x0

    .line 494
    goto/16 :goto_27

    .line 496
    :cond_1ef
    move/from16 v13, p2

    .line 498
    move/from16 v21, v2

    .line 500
    if-eqz v6, :cond_20b

    .line 502
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 504
    move/from16 v1, v21

    .line 506
    if-eq v1, v0, :cond_20b

    .line 508
    const/4 v6, 0x1

    .line 509
    move-object/from16 v0, p0

    .line 511
    move/from16 v1, p1

    .line 513
    move/from16 v2, p2

    .line 515
    move-object/from16 v3, p3

    .line 517
    move/from16 v4, p4

    .line 519
    move/from16 v5, p5

    .line 521
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    .line 524
    :cond_20b
    :goto_20b
    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 9
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v1, v2

    .line 24
    add-int/2addr v1, p3

    .line 25
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    .line 28
    move-result p3

    .line 29
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p3

    .line 37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 40
    move-result v0

    .line 41
    if-le p3, v0, :cond_37

    .line 43
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 46
    move-result p2

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result p1

    .line 55
    goto :goto_49

    .line 56
    :cond_37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 59
    move-result v0

    .line 60
    if-ge p3, v0, :cond_49

    .line 62
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 65
    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 69
    move-result p1

    .line 70
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p1

    .line 74
    :cond_49
    :goto_49
    return p1
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 9
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v1, v2

    .line 24
    add-int/2addr v1, p3

    .line 25
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    .line 28
    move-result p3

    .line 29
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p3

    .line 37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 40
    move-result v0

    .line 41
    if-le p3, v0, :cond_37

    .line 43
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 46
    move-result p2

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result p1

    .line 55
    goto :goto_49

    .line 56
    :cond_37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 59
    move-result v0

    .line 60
    if-ge p3, v0, :cond_49

    .line 62
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 65
    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 69
    move-result p1

    .line 70
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p1

    .line 74
    :cond_49
    :goto_49
    return p1
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getPaddingEndCross(Z)I
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 5
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 12
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getPaddingEndMain(Z)I
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 5
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 12
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getPaddingStartCross(Z)I
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 5
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 12
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getPaddingStartMain(Z)I
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 5
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 12
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .registers 3

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p2, v0

    .line 3
    if-ne p1, p2, :cond_b

    .line 5
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    .line 14
    move-result p6

    .line 15
    const/4 v0, 0x1

    .line 16
    if-eqz p6, :cond_12

    .line 18
    return v0

    .line 19
    :cond_12
    if-nez p2, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 24
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getMaxLine()I

    .line 27
    move-result p2

    .line 28
    const/4 p6, -0x1

    .line 29
    if-eq p2, p6, :cond_22

    .line 31
    add-int/2addr p9, v0

    .line 32
    if-gt p2, p9, :cond_22

    .line 34
    return v1

    .line 35
    :cond_22
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 37
    invoke-interface {p2, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    .line 40
    move-result p1

    .line 41
    if-lez p1, :cond_2b

    .line 43
    add-int/2addr p5, p1

    .line 44
    :cond_2b
    add-int/2addr p4, p5

    .line 45
    if-ge p3, p4, :cond_2f

    .line 47
    move v1, v0

    .line 48
    :cond_2f
    return v1
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .registers 28

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v3, p3

    .line 5
    move/from16 v4, p4

    .line 7
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 9
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 11
    const/4 v2, 0x0

    .line 12
    cmpg-float v5, v1, v2

    .line 14
    if-lez v5, :cond_20b

    .line 16
    if-le v4, v0, :cond_13

    .line 18
    goto/16 :goto_20b

    .line 20
    :cond_13
    sub-int v5, v0, v4

    .line 22
    int-to-float v5, v5

    .line 23
    div-float/2addr v5, v1

    .line 24
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 26
    add-int v1, p5, v1

    .line 28
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 30
    if-nez p6, :cond_23

    .line 32
    const/high16 v1, -0x80000000

    .line 34
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 36
    :cond_23
    const/4 v1, 0x0

    .line 37
    move v6, v1

    .line 38
    move v8, v6

    .line 39
    move v9, v2

    .line 40
    :goto_27
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 42
    if-ge v1, v10, :cond_1f2

    .line 44
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 46
    add-int/2addr v10, v1

    .line 47
    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 49
    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    .line 52
    move-result-object v11

    .line 53
    if-eqz v11, :cond_1e8

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v12

    .line 59
    const/16 v13, 0x8

    .line 61
    if-ne v12, v13, :cond_40

    .line 63
    goto/16 :goto_1e8

    .line 65
    :cond_40
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 71
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 73
    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    .line 76
    move-result v13

    .line 77
    const-wide/high16 v17, 0x3ff0000000000000L  # 1.0

    .line 79
    const/high16 v19, 0x3f800000  # 1.0f

    .line 81
    const/4 v14, 0x1

    .line 82
    if-eqz v13, :cond_119

    .line 84
    if-ne v13, v14, :cond_57

    .line 86
    goto/16 :goto_119

    .line 88
    :cond_57
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    move-result v13

    .line 92
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 94
    if-eqz v15, :cond_65

    .line 96
    aget-wide v14, v15, v10

    .line 98
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 101
    move-result v13

    .line 102
    :cond_65
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    move-result v14

    .line 106
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 108
    if-eqz v15, :cond_73

    .line 110
    aget-wide v14, v15, v10

    .line 112
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 115
    move-result v14

    .line 116
    :cond_73
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 118
    aget-boolean v15, v15, v10

    .line 120
    if-nez v15, :cond_ed

    .line 122
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 125
    move-result v15

    .line 126
    cmpl-float v15, v15, v2

    .line 128
    if-lez v15, :cond_ed

    .line 130
    int-to-float v13, v13

    .line 131
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 134
    move-result v14

    .line 135
    mul-float/2addr v14, v5

    .line 136
    sub-float/2addr v13, v14

    .line 137
    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 139
    const/4 v15, 0x1

    .line 140
    sub-int/2addr v14, v15

    .line 141
    if-ne v1, v14, :cond_90

    .line 143
    add-float/2addr v13, v9

    .line 144
    move v9, v2

    .line 145
    :cond_90
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 148
    move-result v14

    .line 149
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 152
    move-result v2

    .line 153
    if-ge v14, v2, :cond_af

    .line 155
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 158
    move-result v14

    .line 159
    iget-object v2, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 161
    aput-boolean v15, v2, v10

    .line 163
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 165
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 168
    move-result v6

    .line 169
    sub-float/2addr v2, v6

    .line 170
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 172
    move v2, v0

    .line 173
    move v15, v1

    .line 174
    const/4 v6, 0x1

    .line 175
    goto :goto_c9

    .line 176
    :cond_af
    int-to-float v2, v14

    .line 177
    sub-float/2addr v13, v2

    .line 178
    add-float/2addr v13, v9

    .line 179
    move v2, v0

    .line 180
    move v15, v1

    .line 181
    float-to-double v0, v13

    .line 182
    cmpl-double v9, v0, v17

    .line 184
    if-lez v9, :cond_be

    .line 186
    add-int/lit8 v14, v14, 0x1

    .line 188
    sub-float v13, v13, v19

    .line 190
    goto :goto_c8

    .line 191
    :cond_be
    const-wide/high16 v16, -0x4010000000000000L  # -1.0

    .line 193
    cmpg-double v0, v0, v16

    .line 195
    if-gez v0, :cond_c8

    .line 197
    add-int/lit8 v14, v14, -0x1

    .line 199
    add-float v13, v13, v19

    .line 201
    :cond_c8
    :goto_c8
    move v9, v13

    .line 202
    :goto_c9
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 204
    move/from16 v1, p1

    .line 206
    invoke-direct {v7, v1, v12, v0}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    .line 209
    move-result v0

    .line 210
    const/high16 v13, 0x40000000  # 2.0f

    .line 212
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 215
    move-result v13

    .line 216
    invoke-virtual {v11, v0, v13}, Landroid/view/View;->measure(II)V

    .line 219
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 222
    move-result v14

    .line 223
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 226
    move-result v16

    .line 227
    invoke-direct {v7, v10, v0, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 230
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 232
    invoke-interface {v0, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 235
    move/from16 v13, v16

    .line 237
    goto :goto_f1

    .line 238
    :cond_ed
    move v2, v0

    .line 239
    move v15, v1

    .line 240
    move/from16 v1, p1

    .line 242
    :goto_f1
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 245
    move-result v0

    .line 246
    add-int/2addr v14, v0

    .line 247
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 250
    move-result v0

    .line 251
    add-int/2addr v14, v0

    .line 252
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 254
    invoke-interface {v0, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 257
    move-result v0

    .line 258
    add-int/2addr v14, v0

    .line 259
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 262
    move-result v0

    .line 263
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 265
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 268
    move-result v10

    .line 269
    add-int/2addr v13, v10

    .line 270
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 273
    move-result v10

    .line 274
    add-int/2addr v13, v10

    .line 275
    add-int/2addr v13, v8

    .line 276
    iput v13, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 278
    move/from16 v13, p2

    .line 280
    goto/16 :goto_1de

    .line 282
    :cond_119
    :goto_119
    move v2, v0

    .line 283
    move v15, v1

    .line 284
    move/from16 v1, p1

    .line 286
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 289
    move-result v0

    .line 290
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 292
    if-eqz v13, :cond_12b

    .line 294
    aget-wide v0, v13, v10

    .line 296
    invoke-virtual {v7, v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 299
    move-result v0

    .line 300
    :cond_12b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 303
    move-result v1

    .line 304
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 306
    move/from16 v20, v15

    .line 308
    if-eqz v13, :cond_13b

    .line 310
    aget-wide v14, v13, v10

    .line 312
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 315
    move-result v1

    .line 316
    :cond_13b
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 318
    aget-boolean v13, v13, v10

    .line 320
    if-nez v13, :cond_1b5

    .line 322
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 325
    move-result v13

    .line 326
    const/4 v14, 0x0

    .line 327
    cmpl-float v13, v13, v14

    .line 329
    if-lez v13, :cond_1b5

    .line 331
    int-to-float v0, v0

    .line 332
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 335
    move-result v1

    .line 336
    mul-float/2addr v1, v5

    .line 337
    sub-float/2addr v0, v1

    .line 338
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 340
    const/4 v13, 0x1

    .line 341
    sub-int/2addr v1, v13

    .line 342
    move/from16 v15, v20

    .line 344
    if-ne v15, v1, :cond_15b

    .line 346
    add-float/2addr v0, v9

    .line 347
    move v9, v14

    .line 348
    :cond_15b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 351
    move-result v1

    .line 352
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 355
    move-result v14

    .line 356
    if-ge v1, v14, :cond_178

    .line 358
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 361
    move-result v1

    .line 362
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 364
    aput-boolean v13, v0, v10

    .line 366
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 368
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 371
    move-result v6

    .line 372
    sub-float/2addr v0, v6

    .line 373
    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 375
    move v6, v13

    .line 376
    goto :goto_190

    .line 377
    :cond_178
    int-to-float v13, v1

    .line 378
    sub-float/2addr v0, v13

    .line 379
    add-float/2addr v0, v9

    .line 380
    float-to-double v13, v0

    .line 381
    cmpl-double v9, v13, v17

    .line 383
    if-lez v9, :cond_185

    .line 385
    add-int/lit8 v1, v1, 0x1

    .line 387
    sub-float v0, v0, v19

    .line 389
    goto :goto_18f

    .line 390
    :cond_185
    const-wide/high16 v16, -0x4010000000000000L  # -1.0

    .line 392
    cmpg-double v9, v13, v16

    .line 394
    if-gez v9, :cond_18f

    .line 396
    add-int/lit8 v1, v1, -0x1

    .line 398
    add-float v0, v0, v19

    .line 400
    :cond_18f
    :goto_18f
    move v9, v0

    .line 401
    :goto_190
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 403
    move/from16 v13, p2

    .line 405
    invoke-direct {v7, v13, v12, v0}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    .line 408
    move-result v0

    .line 409
    const/high16 v14, 0x40000000  # 2.0f

    .line 411
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 414
    move-result v1

    .line 415
    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 421
    move-result v14

    .line 422
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 425
    move-result v16

    .line 426
    invoke-direct {v7, v10, v1, v0, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 429
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 431
    invoke-interface {v0, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 434
    move v0, v14

    .line 435
    move/from16 v1, v16

    .line 437
    goto :goto_1b9

    .line 438
    :cond_1b5
    move/from16 v13, p2

    .line 440
    move/from16 v15, v20

    .line 442
    :goto_1b9
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 445
    move-result v10

    .line 446
    add-int/2addr v1, v10

    .line 447
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 450
    move-result v10

    .line 451
    add-int/2addr v1, v10

    .line 452
    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 454
    invoke-interface {v10, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 457
    move-result v10

    .line 458
    add-int/2addr v1, v10

    .line 459
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 462
    move-result v1

    .line 463
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 465
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 468
    move-result v10

    .line 469
    add-int/2addr v0, v10

    .line 470
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 473
    move-result v10

    .line 474
    add-int/2addr v0, v10

    .line 475
    add-int/2addr v0, v8

    .line 476
    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 478
    move v0, v1

    .line 479
    :goto_1de
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 481
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 484
    move-result v1

    .line 485
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 487
    move v8, v0

    .line 488
    goto :goto_1ec

    .line 489
    :cond_1e8
    :goto_1e8
    move/from16 v13, p2

    .line 491
    move v2, v0

    .line 492
    move v15, v1

    .line 493
    :goto_1ec
    add-int/lit8 v1, v15, 0x1

    .line 495
    move v0, v2

    .line 496
    const/4 v2, 0x0

    .line 497
    goto/16 :goto_27

    .line 499
    :cond_1f2
    move/from16 v13, p2

    .line 501
    move v2, v0

    .line 502
    if-eqz v6, :cond_20b

    .line 504
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 506
    if-eq v2, v0, :cond_20b

    .line 508
    const/4 v6, 0x1

    .line 509
    move-object/from16 v0, p0

    .line 511
    move/from16 v1, p1

    .line 513
    move/from16 v2, p2

    .line 515
    move-object/from16 v3, p3

    .line 517
    move/from16 v4, p4

    .line 519
    move/from16 v5, p5

    .line 521
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    .line 524
    :cond_20b
    :goto_20b
    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    new-array p1, p1, [I

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_25

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/flexbox/FlexboxHelper$Order;

    .line 26
    iget v2, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 28
    aput v2, p1, v0

    .line 30
    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 32
    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_d

    .line 38
    :cond_25
    return-object p1
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 19
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    .line 27
    move-result v1

    .line 28
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p2

    .line 32
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    .line 35
    move-result v0

    .line 36
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result p2

    .line 40
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 42
    if-eqz v0, :cond_32

    .line 44
    aget-wide v1, v0, p3

    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    .line 49
    move-result v0

    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    move-result v0

    .line 55
    :goto_36
    const/high16 v1, 0x40000000  # 2.0f

    .line 57
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 71
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 73
    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 76
    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 19
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    .line 27
    move-result v1

    .line 28
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p2

    .line 32
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    .line 35
    move-result v0

    .line 36
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result p2

    .line 40
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 42
    if-eqz v0, :cond_32

    .line 44
    aget-wide v1, v0, p3

    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    .line 49
    move-result v0

    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    move-result v0

    .line 55
    :goto_36
    const/high16 v1, 0x40000000  # 2.0f

    .line 57
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 71
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 73
    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 76
    return-void
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    .line 8
    move-result-wide p2

    .line 9
    aput-wide p2, v0, p1

    .line 11
    :cond_a
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 13
    if-eqz p2, :cond_1c

    .line 15
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    move-result p3

    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result p4

    .line 23
    invoke-virtual {p0, p3, p4}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    .line 26
    move-result-wide p3

    .line 27
    aput-wide p3, p2, p1

    .line 29
    :cond_1c
    return-void
.end method


# virtual methods
.method public calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 3
    move-object/from16 v11, p1

    .line 5
    move/from16 v12, p2

    .line 7
    move/from16 v13, p3

    .line 9
    move/from16 v14, p6

    .line 11
    iget-object v0, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 13
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    .line 16
    move-result v15

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v9

    .line 21
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result v8

    .line 25
    if-nez p7, :cond_21

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    move-object v7, v0

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    move-object/from16 v7, p7

    .line 36
    :goto_23
    iput-object v7, v11, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 38
    const/4 v6, -0x1

    .line 39
    if-ne v14, v6, :cond_2a

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    :goto_2b
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    .line 47
    move-result v1

    .line 48
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    .line 51
    move-result v2

    .line 52
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    .line 55
    move-result v16

    .line 56
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    .line 59
    move-result v17

    .line 60
    new-instance v3, Lcom/google/android/flexbox/FlexLine;

    .line 62
    invoke-direct {v3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 65
    move/from16 v6, p5

    .line 67
    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 69
    add-int/2addr v2, v1

    .line 70
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 72
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 74
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    .line 77
    move-result v1

    .line 78
    const/high16 v18, -0x80000000

    .line 80
    move/from16 v19, v0

    .line 82
    move/from16 v22, v18

    .line 84
    const/4 v0, 0x0

    .line 85
    const/16 v20, 0x0

    .line 87
    const/16 v21, 0x0

    .line 89
    :goto_58
    if-ge v6, v1, :cond_34d

    .line 91
    iget-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 93
    invoke-interface {v5, v6}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    .line 96
    move-result-object v5

    .line 97
    if-nez v5, :cond_6c

    .line 99
    invoke-direct {v10, v6, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_88

    .line 105
    invoke-direct {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 108
    goto :goto_88

    .line 109
    :cond_6c
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 112
    move-result v4

    .line 113
    const/16 v11, 0x8

    .line 115
    if-ne v4, v11, :cond_99

    .line 117
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 119
    const/4 v5, 0x1

    .line 120
    add-int/2addr v4, v5

    .line 121
    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 123
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 125
    add-int/2addr v4, v5

    .line 126
    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 128
    invoke-direct {v10, v6, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_88

    .line 134
    invoke-direct {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 137
    :cond_88
    :goto_88
    move/from16 v11, p4

    .line 139
    move/from16 v24, v8

    .line 141
    move/from16 v26, v9

    .line 143
    move v5, v13

    .line 144
    move v8, v14

    .line 145
    const/4 v9, -0x1

    .line 146
    const/4 v12, 0x1

    .line 147
    const/16 v27, 0x0

    .line 149
    move-object v14, v7

    .line 150
    move v7, v2

    .line 151
    move v2, v1

    .line 152
    goto/16 :goto_33c

    .line 154
    :cond_99
    instance-of v4, v5, Landroid/widget/CompoundButton;

    .line 156
    if-eqz v4, :cond_a3

    .line 158
    move-object v4, v5

    .line 159
    check-cast v4, Landroid/widget/CompoundButton;

    .line 161
    invoke-direct {v10, v4}, Lcom/google/android/flexbox/FlexboxHelper;->evaluateMinimumSizeForCompoundButton(Landroid/widget/CompoundButton;)V

    .line 164
    :cond_a3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    move-result-object v4

    .line 168
    move-object v11, v4

    .line 169
    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 171
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    .line 174
    move-result v4

    .line 175
    move/from16 v25, v1

    .line 177
    const/4 v1, 0x4

    .line 178
    if-ne v4, v1, :cond_bc

    .line 180
    iget-object v1, v3, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v4

    .line 186
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_bc
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 192
    move-result v1

    .line 193
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    .line 196
    move-result v4

    .line 197
    const/high16 v26, -0x40800000  # -1.0f

    .line 199
    cmpl-float v4, v4, v26

    .line 201
    if-eqz v4, :cond_d8

    .line 203
    const/high16 v4, 0x40000000  # 2.0f

    .line 205
    if-ne v9, v4, :cond_d8

    .line 207
    int-to-float v1, v8

    .line 208
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    .line 211
    move-result v4

    .line 212
    mul-float/2addr v1, v4

    .line 213
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 216
    move-result v1

    .line 217
    :cond_d8
    if-eqz v15, :cond_114

    .line 219
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 221
    const/4 v14, 0x1

    .line 222
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 225
    move-result v24

    .line 226
    add-int v24, v2, v24

    .line 228
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 231
    move-result v26

    .line 232
    add-int v14, v24, v26

    .line 234
    invoke-interface {v4, v12, v14, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    .line 237
    move-result v1

    .line 238
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 240
    add-int v14, v16, v17

    .line 242
    move/from16 v24, v8

    .line 244
    const/4 v8, 0x1

    .line 245
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 248
    move-result v26

    .line 249
    add-int v14, v14, v26

    .line 251
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 254
    move-result v26

    .line 255
    add-int v14, v14, v26

    .line 257
    add-int/2addr v14, v0

    .line 258
    move/from16 v26, v9

    .line 260
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 263
    move-result v9

    .line 264
    invoke-interface {v4, v13, v14, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    .line 267
    move-result v4

    .line 268
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 271
    invoke-direct {v10, v6, v1, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 274
    move v9, v1

    .line 275
    const/4 v14, 0x0

    .line 276
    goto :goto_14b

    .line 277
    :cond_114
    move/from16 v24, v8

    .line 279
    move/from16 v26, v9

    .line 281
    const/4 v8, 0x1

    .line 282
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 284
    add-int v9, v16, v17

    .line 286
    const/4 v14, 0x0

    .line 287
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 290
    move-result v23

    .line 291
    add-int v9, v9, v23

    .line 293
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 296
    move-result v23

    .line 297
    add-int v9, v9, v23

    .line 299
    add-int/2addr v9, v0

    .line 300
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 303
    move-result v8

    .line 304
    invoke-interface {v4, v13, v9, v8}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    .line 307
    move-result v4

    .line 308
    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 310
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 313
    move-result v9

    .line 314
    add-int/2addr v9, v2

    .line 315
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 318
    move-result v23

    .line 319
    add-int v9, v9, v23

    .line 321
    invoke-interface {v8, v12, v9, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    .line 324
    move-result v1

    .line 325
    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    .line 328
    invoke-direct {v10, v6, v4, v1, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 331
    move v9, v1

    .line 332
    :goto_14b
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 334
    invoke-interface {v1, v6, v5}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 337
    invoke-direct {v10, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 340
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    .line 343
    move-result v1

    .line 344
    move/from16 v4, v20

    .line 346
    invoke-static {v4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 349
    move-result v20

    .line 350
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 352
    invoke-direct {v10, v5, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    .line 355
    move-result v1

    .line 356
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 359
    move-result v8

    .line 360
    add-int/2addr v1, v8

    .line 361
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 364
    move-result v8

    .line 365
    add-int/2addr v8, v1

    .line 366
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 369
    move-result v23

    .line 370
    move v1, v0

    .line 371
    move-object/from16 v0, p0

    .line 373
    move v12, v1

    .line 374
    move/from16 v14, v25

    .line 376
    move-object v1, v5

    .line 377
    move v14, v2

    .line 378
    move/from16 v2, v26

    .line 380
    move-object/from16 v28, v3

    .line 382
    move/from16 v3, v24

    .line 384
    move/from16 v29, v14

    .line 386
    const/4 v14, 0x1

    .line 387
    move-object v14, v5

    .line 388
    const/16 v27, 0x0

    .line 390
    move v5, v8

    .line 391
    move v8, v6

    .line 392
    move-object/from16 p7, v14

    .line 394
    const/4 v14, -0x1

    .line 395
    move-object v6, v11

    .line 396
    move-object v14, v7

    .line 397
    move v7, v8

    .line 398
    move v13, v8

    .line 399
    move/from16 v8, v21

    .line 401
    move/from16 v30, v9

    .line 403
    move/from16 v9, v23

    .line 405
    invoke-direct/range {v0 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z

    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_235

    .line 411
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    .line 414
    move-result v0

    .line 415
    if-lez v0, :cond_1b0

    .line 417
    if-lez v13, :cond_1a5

    .line 419
    add-int/lit8 v5, v13, -0x1

    .line 421
    goto :goto_1a7

    .line 422
    :cond_1a5
    move/from16 v5, v27

    .line 424
    :goto_1a7
    move-object/from16 v3, v28

    .line 426
    invoke-direct {v10, v14, v3, v5, v12}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 429
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 431
    add-int/2addr v0, v12

    .line 432
    goto :goto_1b1

    .line 433
    :cond_1b0
    move v0, v12

    .line 434
    :goto_1b1
    if-eqz v15, :cond_1ee

    .line 436
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    .line 439
    move-result v1

    .line 440
    const/4 v2, -0x1

    .line 441
    if-ne v1, v2, :cond_1e8

    .line 443
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 445
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    .line 448
    move-result v2

    .line 449
    iget-object v3, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 451
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    .line 454
    move-result v3

    .line 455
    add-int/2addr v2, v3

    .line 456
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 459
    move-result v3

    .line 460
    add-int/2addr v2, v3

    .line 461
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 464
    move-result v3

    .line 465
    add-int/2addr v2, v3

    .line 466
    add-int/2addr v2, v0

    .line 467
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    .line 470
    move-result v3

    .line 471
    move/from16 v5, p3

    .line 473
    move v6, v13

    .line 474
    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    .line 477
    move-result v1

    .line 478
    move-object/from16 v2, p7

    .line 480
    move/from16 v3, v30

    .line 482
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 485
    invoke-direct {v10, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 488
    goto :goto_222

    .line 489
    :cond_1e8
    move/from16 v5, p3

    .line 491
    move-object/from16 v2, p7

    .line 493
    move v6, v13

    .line 494
    goto :goto_222

    .line 495
    :cond_1ee
    move/from16 v5, p3

    .line 497
    move-object/from16 v2, p7

    .line 499
    move v6, v13

    .line 500
    move/from16 v3, v30

    .line 502
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    .line 505
    move-result v1

    .line 506
    const/4 v4, -0x1

    .line 507
    if-ne v1, v4, :cond_222

    .line 509
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 511
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    .line 514
    move-result v4

    .line 515
    iget-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 517
    invoke-interface {v7}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    .line 520
    move-result v7

    .line 521
    add-int/2addr v4, v7

    .line 522
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 525
    move-result v7

    .line 526
    add-int/2addr v4, v7

    .line 527
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 530
    move-result v7

    .line 531
    add-int/2addr v4, v7

    .line 532
    add-int/2addr v4, v0

    .line 533
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    .line 536
    move-result v7

    .line 537
    invoke-interface {v1, v5, v4, v7}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    .line 540
    move-result v1

    .line 541
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 544
    invoke-direct {v10, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 547
    :cond_222
    :goto_222
    new-instance v3, Lcom/google/android/flexbox/FlexLine;

    .line 549
    invoke-direct {v3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 552
    const/4 v1, 0x1

    .line 553
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 555
    move/from16 v7, v29

    .line 557
    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 559
    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 561
    move/from16 v4, v18

    .line 563
    move/from16 v1, v27

    .line 565
    goto :goto_24a

    .line 566
    :cond_235
    move/from16 v5, p3

    .line 568
    move-object/from16 v2, p7

    .line 570
    move v6, v13

    .line 571
    move-object/from16 v3, v28

    .line 573
    move/from16 v7, v29

    .line 575
    const/4 v1, 0x1

    .line 576
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 578
    add-int/2addr v0, v1

    .line 579
    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 581
    add-int/lit8 v0, v21, 0x1

    .line 583
    move v1, v0

    .line 584
    move v0, v12

    .line 585
    move/from16 v4, v22

    .line 587
    :goto_24a
    iget-boolean v8, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 589
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 592
    move-result v9

    .line 593
    const/4 v12, 0x0

    .line 594
    cmpl-float v9, v9, v12

    .line 596
    if-eqz v9, :cond_257

    .line 598
    const/4 v9, 0x1

    .line 599
    goto :goto_259

    .line 600
    :cond_257
    move/from16 v9, v27

    .line 602
    :goto_259
    or-int/2addr v8, v9

    .line 603
    iput-boolean v8, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 605
    iget-boolean v8, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 607
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 610
    move-result v9

    .line 611
    cmpl-float v9, v9, v12

    .line 613
    if-eqz v9, :cond_268

    .line 615
    const/4 v9, 0x1

    .line 616
    goto :goto_26a

    .line 617
    :cond_268
    move/from16 v9, v27

    .line 619
    :goto_26a
    or-int/2addr v8, v9

    .line 620
    iput-boolean v8, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 622
    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 624
    if-eqz v8, :cond_277

    .line 626
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 629
    move-result v9

    .line 630
    aput v9, v8, v6

    .line 632
    :cond_277
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 634
    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    .line 637
    move-result v9

    .line 638
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 641
    move-result v12

    .line 642
    add-int/2addr v9, v12

    .line 643
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 646
    move-result v12

    .line 647
    add-int/2addr v9, v12

    .line 648
    add-int/2addr v9, v8

    .line 649
    iput v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 651
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 653
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    .line 656
    move-result v9

    .line 657
    add-float/2addr v8, v9

    .line 658
    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 660
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 662
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    .line 665
    move-result v9

    .line 666
    add-float/2addr v8, v9

    .line 667
    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 669
    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 671
    invoke-interface {v8, v2, v6, v1, v3}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    .line 674
    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    .line 677
    move-result v8

    .line 678
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 681
    move-result v9

    .line 682
    add-int/2addr v8, v9

    .line 683
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 686
    move-result v9

    .line 687
    add-int/2addr v8, v9

    .line 688
    iget-object v9, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 690
    invoke-interface {v9, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 693
    move-result v9

    .line 694
    add-int/2addr v8, v9

    .line 695
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 698
    move-result v4

    .line 699
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 701
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 704
    move-result v8

    .line 705
    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 707
    if-eqz v15, :cond_2f5

    .line 709
    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 711
    invoke-interface {v8}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    .line 714
    move-result v8

    .line 715
    const/4 v9, 0x2

    .line 716
    if-eq v8, v9, :cond_2df

    .line 718
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 720
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    .line 723
    move-result v2

    .line 724
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 727
    move-result v9

    .line 728
    add-int/2addr v2, v9

    .line 729
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 732
    move-result v2

    .line 733
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 735
    goto :goto_2f5

    .line 736
    :cond_2df
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 741
    move-result v9

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    .line 745
    move-result v2

    .line 746
    sub-int/2addr v9, v2

    .line 747
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 750
    move-result v2

    .line 751
    add-int/2addr v9, v2

    .line 752
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 755
    move-result v2

    .line 756
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 758
    :cond_2f5
    :goto_2f5
    move/from16 v2, v25

    .line 760
    invoke-direct {v10, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    .line 763
    move-result v8

    .line 764
    if-eqz v8, :cond_303

    .line 766
    invoke-direct {v10, v14, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 769
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 771
    add-int/2addr v0, v8

    .line 772
    :cond_303
    move/from16 v8, p6

    .line 774
    const/4 v9, -0x1

    .line 775
    if-eq v8, v9, :cond_32c

    .line 777
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 780
    move-result v11

    .line 781
    if-lez v11, :cond_32c

    .line 783
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 786
    move-result v11

    .line 787
    const/4 v12, 0x1

    .line 788
    sub-int/2addr v11, v12

    .line 789
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 792
    move-result-object v11

    .line 793
    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    .line 795
    iget v11, v11, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 797
    if-lt v11, v8, :cond_32d

    .line 799
    if-lt v6, v8, :cond_32d

    .line 801
    if-nez v19, :cond_32d

    .line 803
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    .line 806
    move-result v0

    .line 807
    neg-int v0, v0

    .line 808
    move/from16 v11, p4

    .line 810
    move/from16 v19, v12

    .line 812
    goto :goto_32f

    .line 813
    :cond_32c
    const/4 v12, 0x1

    .line 814
    :cond_32d
    move/from16 v11, p4

    .line 816
    :goto_32f
    if-le v0, v11, :cond_338

    .line 818
    if-eqz v19, :cond_338

    .line 820
    move-object/from16 v0, p1

    .line 822
    move/from16 v4, v20

    .line 824
    goto :goto_351

    .line 825
    :cond_338
    move/from16 v21, v1

    .line 827
    move/from16 v22, v4

    .line 829
    :goto_33c
    add-int/lit8 v6, v6, 0x1

    .line 831
    move-object/from16 v11, p1

    .line 833
    move/from16 v12, p2

    .line 835
    move v1, v2

    .line 836
    move v13, v5

    .line 837
    move v2, v7

    .line 838
    move-object v7, v14

    .line 839
    move/from16 v9, v26

    .line 841
    move v14, v8

    .line 842
    move/from16 v8, v24

    .line 844
    goto/16 :goto_58

    .line 846
    :cond_34d
    move/from16 v4, v20

    .line 848
    move-object/from16 v0, p1

    .line 850
    :goto_351
    iput v4, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 852
    return-void
.end method

.method public calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .registers 12

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method public calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method public calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v6, p5

    .line 8
    move-object v7, p6

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 12
    return-void
.end method

.method public calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .registers 12

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method public calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method public calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p3

    .line 5
    move v3, p2

    .line 6
    move v4, p4

    .line 7
    move v6, p5

    .line 8
    move-object v7, p6

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 12
    return-void
.end method

.method public clearFlexLines(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 3
    aget v0, v0, p2

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    const/4 v0, 0x0

    .line 9
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 15
    :goto_e
    if-lt v2, v0, :cond_16

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 22
    goto :goto_e

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 25
    array-length v0, p1

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    if-le p2, v0, :cond_21

    .line 30
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 37
    :goto_24
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 39
    array-length v0, p1

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    const-wide/16 v1, 0x0

    .line 44
    if-le p2, v0, :cond_31

    .line 46
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-static {p1, p2, v0, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 53
    :goto_34
    return-void
.end method

.method public createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_20

    .line 4
    instance-of p1, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz p1, :cond_20

    .line 5
    check-cast p3, Lcom/google/android/flexbox/FlexItem;

    .line 6
    invoke-interface {p3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result p1

    iput p1, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    goto :goto_22

    .line 7
    :cond_20
    iput v3, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    :goto_22
    const/4 p1, -0x1

    if-eq p2, p1, :cond_45

    if-ne p2, v0, :cond_28

    goto :goto_45

    .line 8
    :cond_28
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result p1

    if-ge p2, p1, :cond_42

    .line 9
    iput p2, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    :goto_32
    if-ge p2, v0, :cond_47

    .line 10
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget p3, p1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    .line 11
    :cond_42
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    goto :goto_47

    .line 12
    :cond_45
    :goto_45
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 13
    :cond_47
    :goto_47
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    .line 14
    invoke-direct {p0, v0, v1, p4}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public determineCrossSize(III)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_27

    .line 12
    if-eq v0, v3, :cond_27

    .line 14
    if-eq v0, v2, :cond_1e

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p2, "Invalid flex direction: "

    .line 23
    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1e
    :goto_1e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 34
    move-result p2

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    move-result p1

    .line 39
    goto :goto_32

    .line 40
    :cond_27
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 43
    move-result p1

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 47
    move-result p2

    .line 48
    move v11, p2

    .line 49
    move p2, p1

    .line 50
    move p1, v11

    .line 51
    :goto_32
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 53
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    .line 56
    move-result-object v0

    .line 57
    const/high16 v4, 0x40000000  # 2.0f

    .line 59
    if-ne p2, v4, :cond_176

    .line 61
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 63
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getSumOfCrossSize()I

    .line 66
    move-result p2

    .line 67
    add-int/2addr p2, p3

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x0

    .line 73
    if-ne v4, v3, :cond_55

    .line 75
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lcom/google/android/flexbox/FlexLine;

    .line 81
    sub-int/2addr p1, p3

    .line 82
    iput p1, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 84
    goto/16 :goto_176

    .line 86
    :cond_55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    move-result p3

    .line 90
    if-lt p3, v2, :cond_176

    .line 92
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 94
    invoke-interface {p3}, Lcom/google/android/flexbox/FlexContainer;->getAlignContent()I

    .line 97
    move-result p3

    .line 98
    if-eq p3, v3, :cond_16b

    .line 100
    if-eq p3, v2, :cond_161

    .line 102
    const/high16 v4, -0x40800000  # -1.0f

    .line 104
    const/4 v6, 0x0

    .line 105
    const/high16 v7, 0x3f800000  # 1.0f

    .line 107
    if-eq p3, v1, :cond_f7

    .line 109
    const/4 v1, 0x4

    .line 110
    if-eq p3, v1, :cond_b6

    .line 112
    const/4 v1, 0x5

    .line 113
    if-eq p3, v1, :cond_74

    .line 115
    goto/16 :goto_176

    .line 117
    :cond_74
    if-lt p2, p1, :cond_78

    .line 119
    goto/16 :goto_176

    .line 121
    :cond_78
    sub-int/2addr p1, p2

    .line 122
    int-to-float p1, p1

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 126
    move-result p2

    .line 127
    int-to-float p2, p2

    .line 128
    div-float/2addr p1, p2

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 132
    move-result p2

    .line 133
    move p3, v6

    .line 134
    :goto_85
    if-ge v5, p2, :cond_176

    .line 136
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 142
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 144
    int-to-float v2, v2

    .line 145
    add-float/2addr v2, p1

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 149
    move-result v8

    .line 150
    sub-int/2addr v8, v3

    .line 151
    if-ne v5, v8, :cond_9a

    .line 153
    add-float/2addr v2, p3

    .line 154
    move p3, v6

    .line 155
    :cond_9a
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 158
    move-result v8

    .line 159
    int-to-float v9, v8

    .line 160
    sub-float/2addr v2, v9

    .line 161
    add-float/2addr v2, p3

    .line 162
    cmpl-float p3, v2, v7

    .line 164
    if-lez p3, :cond_a9

    .line 166
    add-int/lit8 v8, v8, 0x1

    .line 168
    sub-float/2addr v2, v7

    .line 169
    goto :goto_b0

    .line 170
    :cond_a9
    cmpg-float p3, v2, v4

    .line 172
    if-gez p3, :cond_b0

    .line 174
    add-int/lit8 v8, v8, -0x1

    .line 176
    add-float/2addr v2, v7

    .line 177
    :cond_b0
    :goto_b0
    move p3, v2

    .line 178
    iput v8, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 180
    add-int/lit8 v5, v5, 0x1

    .line 182
    goto :goto_85

    .line 183
    :cond_b6
    if-lt p2, p1, :cond_c3

    .line 185
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 187
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    .line 190
    move-result-object p1

    .line 191
    invoke-interface {p3, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 194
    goto/16 :goto_176

    .line 196
    :cond_c3
    sub-int/2addr p1, p2

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 200
    move-result p2

    .line 201
    mul-int/2addr p2, v2

    .line 202
    div-int/2addr p1, p2

    .line 203
    new-instance p2, Ljava/util/ArrayList;

    .line 205
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance p3, Lcom/google/android/flexbox/FlexLine;

    .line 210
    invoke-direct {p3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 213
    iput p1, p3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object p1

    .line 219
    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_f0

    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 231
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    goto :goto_da

    .line 241
    :cond_f0
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 243
    invoke-interface {p1, p2}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 246
    goto/16 :goto_176

    .line 248
    :cond_f7
    if-lt p2, p1, :cond_fb

    .line 250
    goto/16 :goto_176

    .line 252
    :cond_fb
    sub-int/2addr p1, p2

    .line 253
    int-to-float p1, p1

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 257
    move-result p2

    .line 258
    sub-int/2addr p2, v3

    .line 259
    int-to-float p2, p2

    .line 260
    div-float/2addr p1, p2

    .line 261
    new-instance p2, Ljava/util/ArrayList;

    .line 263
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 269
    move-result p3

    .line 270
    move v1, v6

    .line 271
    :goto_10e
    if-ge v5, p3, :cond_15b

    .line 273
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    move-result-object v8

    .line 277
    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 279
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 285
    move-result v8

    .line 286
    sub-int/2addr v8, v3

    .line 287
    if-eq v5, v8, :cond_158

    .line 289
    new-instance v8, Lcom/google/android/flexbox/FlexLine;

    .line 291
    invoke-direct {v8}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 297
    move-result v9

    .line 298
    sub-int/2addr v9, v2

    .line 299
    if-ne v5, v9, :cond_135

    .line 301
    add-float/2addr v1, p1

    .line 302
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 305
    move-result v1

    .line 306
    iput v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 308
    move v1, v6

    .line 309
    goto :goto_13b

    .line 310
    :cond_135
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 313
    move-result v9

    .line 314
    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 316
    :goto_13b
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 318
    int-to-float v10, v9

    .line 319
    sub-float v10, p1, v10

    .line 321
    add-float/2addr v10, v1

    .line 322
    cmpl-float v1, v10, v7

    .line 324
    if-lez v1, :cond_14b

    .line 326
    add-int/lit8 v9, v9, 0x1

    .line 328
    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 330
    sub-float/2addr v10, v7

    .line 331
    goto :goto_154

    .line 332
    :cond_14b
    cmpg-float v1, v10, v4

    .line 334
    if-gez v1, :cond_154

    .line 336
    add-int/lit8 v9, v9, -0x1

    .line 338
    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 340
    add-float/2addr v10, v7

    .line 341
    :cond_154
    :goto_154
    move v1, v10

    .line 342
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_158
    add-int/lit8 v5, v5, 0x1

    .line 347
    goto :goto_10e

    .line 348
    :cond_15b
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 350
    invoke-interface {p1, p2}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 353
    goto :goto_176

    .line 354
    :cond_161
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 356
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    .line 359
    move-result-object p1

    .line 360
    invoke-interface {p3, p1}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 363
    goto :goto_176

    .line 364
    :cond_16b
    sub-int/2addr p1, p2

    .line 365
    new-instance p2, Lcom/google/android/flexbox/FlexLine;

    .line 367
    invoke-direct {p2}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 370
    iput p1, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 372
    invoke-interface {v0, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 375
    :cond_176
    :goto_176
    return-void
.end method

.method public determineMainSize(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    return-void
.end method

.method public determineMainSize(III)V
    .registers 15

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_12

    return-void

    .line 4
    :cond_12
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    if-eqz v1, :cond_56

    const/4 v3, 0x1

    if-eq v1, v3, :cond_56

    const/4 v3, 0x2

    if-eq v1, v3, :cond_38

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2c

    goto :goto_38

    .line 6
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid flex direction: "

    .line 7
    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_38
    :goto_38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v2, :cond_43

    goto :goto_49

    .line 11
    :cond_43
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    .line 12
    :goto_49
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 13
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    goto :goto_77

    .line 14
    :cond_56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 16
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v3

    if-ne v0, v2, :cond_67

    goto :goto_6b

    :cond_67
    if-le v3, v1, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v3

    .line 17
    :goto_6b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 18
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    :goto_77
    move v8, v1

    add-int/2addr v0, v2

    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v2, :cond_80

    .line 20
    aget v1, v2, p3

    .line 21
    :cond_80
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p3

    .line 22
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    move v10, v1

    :goto_8b
    if-ge v10, v9, :cond_b8

    .line 23
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 24
    iget v1, v4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v1, v8, :cond_a6

    iget-boolean v2, v4, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v2, :cond_a6

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v8

    move v6, v0

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_b5

    :cond_a6
    if-le v1, v8, :cond_b5

    .line 26
    iget-boolean v1, v4, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz v1, :cond_b5

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v8

    move v6, v0

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_b5
    :goto_b5
    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    :cond_b8
    return-void
.end method

.method public ensureIndexToFlexLine(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 3
    if-nez v0, :cond_e

    .line 5
    const/16 v0, 0xa

    .line 7
    if-ge p1, v0, :cond_9

    .line 9
    move p1, v0

    .line 10
    :cond_9
    new-array p1, p1, [I

    .line 12
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 14
    goto :goto_1d

    .line 15
    :cond_e
    array-length v1, v0

    .line 16
    if-ge v1, p1, :cond_1d

    .line 18
    array-length v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 21
    if-lt v1, p1, :cond_17

    .line 23
    move p1, v1

    .line 24
    :cond_17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public ensureMeasureSpecCache(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 3
    if-nez v0, :cond_e

    .line 5
    const/16 v0, 0xa

    .line 7
    if-ge p1, v0, :cond_9

    .line 9
    move p1, v0

    .line 10
    :cond_9
    new-array p1, p1, [J

    .line 12
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 14
    goto :goto_1d

    .line 15
    :cond_e
    array-length v1, v0

    .line 16
    if-ge v1, p1, :cond_1d

    .line 18
    array-length v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 21
    if-lt v1, p1, :cond_17

    .line 23
    move p1, v1

    .line 24
    :cond_17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public ensureMeasuredSizeCache(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 3
    if-nez v0, :cond_e

    .line 5
    const/16 v0, 0xa

    .line 7
    if-ge p1, v0, :cond_9

    .line 9
    move p1, v0

    .line 10
    :cond_9
    new-array p1, p1, [J

    .line 12
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 14
    goto :goto_1d

    .line 15
    :cond_e
    array-length v1, v0

    .line 16
    if-ge v1, p1, :cond_1d

    .line 18
    array-length v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 21
    if-lt v1, p1, :cond_17

    .line 23
    move p1, v1

    .line 24
    :cond_17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public extractHigherInt(J)I
    .registers 4

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public extractLowerInt(J)I
    .registers 3

    long-to-int p1, p1

    return p1
.end method

.method public isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v0, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    move v3, v1

    .line 17
    :goto_10
    if-ge v3, v0, :cond_2f

    .line 19
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 21
    invoke-interface {v4, v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    .line 24
    move-result-object v4

    .line 25
    if-nez v4, :cond_1b

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 34
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    .line 37
    move-result v4

    .line 38
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 41
    move-result v5

    .line 42
    if-eq v4, v5, :cond_2c

    .line 44
    return v2

    .line 45
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_10

    .line 48
    :cond_2f
    return v1
.end method

.method public layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 9
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v2, v3, :cond_17

    .line 20
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    .line 23
    move-result v1

    .line 24
    :cond_17
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eqz v1, :cond_c5

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eq v1, v4, :cond_8e

    .line 32
    if-eq v1, v3, :cond_62

    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq v1, v2, :cond_29

    .line 37
    const/4 p2, 0x4

    .line 38
    if-eq v1, p2, :cond_c5

    .line 40
    goto/16 :goto_e8

    .line 42
    :cond_29
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 44
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    .line 47
    move-result v1

    .line 48
    if-eq v1, v3, :cond_47

    .line 50
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 55
    move-result v1

    .line 56
    sub-int/2addr p2, v1

    .line 57
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result p2

    .line 65
    add-int/2addr p4, p2

    .line 66
    add-int/2addr p6, p2

    .line 67
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 70
    goto/16 :goto_e8

    .line 72
    :cond_47
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 77
    move-result v1

    .line 78
    sub-int/2addr p2, v1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 82
    move-result v1

    .line 83
    add-int/2addr v1, p2

    .line 84
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 87
    move-result p2

    .line 88
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result p2

    .line 92
    sub-int/2addr p4, p2

    .line 93
    sub-int/2addr p6, p2

    .line 94
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 97
    goto/16 :goto_e8

    .line 99
    :cond_62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result p2

    .line 103
    sub-int/2addr v2, p2

    .line 104
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 107
    move-result p2

    .line 108
    add-int/2addr v2, p2

    .line 109
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 112
    move-result p2

    .line 113
    sub-int/2addr v2, p2

    .line 114
    div-int/2addr v2, v3

    .line 115
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 117
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    .line 120
    move-result p2

    .line 121
    if-eq p2, v3, :cond_84

    .line 123
    add-int/2addr p4, v2

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    move-result p2

    .line 128
    add-int/2addr p2, p4

    .line 129
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 132
    goto :goto_e8

    .line 133
    :cond_84
    sub-int/2addr p4, v2

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 137
    move-result p2

    .line 138
    add-int/2addr p2, p4

    .line 139
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 142
    goto :goto_e8

    .line 143
    :cond_8e
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 145
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    .line 148
    move-result p2

    .line 149
    if-eq p2, v3, :cond_ab

    .line 151
    add-int/2addr p4, v2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 155
    move-result p2

    .line 156
    sub-int p2, p4, p2

    .line 158
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 161
    move-result p6

    .line 162
    sub-int/2addr p2, p6

    .line 163
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 166
    move-result p6

    .line 167
    sub-int/2addr p4, p6

    .line 168
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 171
    goto :goto_e8

    .line 172
    :cond_ab
    sub-int/2addr p4, v2

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 176
    move-result p2

    .line 177
    add-int/2addr p2, p4

    .line 178
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 181
    move-result p4

    .line 182
    add-int/2addr p2, p4

    .line 183
    sub-int/2addr p6, v2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 187
    move-result p4

    .line 188
    add-int/2addr p4, p6

    .line 189
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 192
    move-result p6

    .line 193
    add-int/2addr p4, p6

    .line 194
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 197
    goto :goto_e8

    .line 198
    :cond_c5
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 200
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    .line 203
    move-result p2

    .line 204
    if-eq p2, v3, :cond_db

    .line 206
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 209
    move-result p2

    .line 210
    add-int/2addr p4, p2

    .line 211
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    .line 214
    move-result p2

    .line 215
    add-int/2addr p6, p2

    .line 216
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 219
    goto :goto_e8

    .line 220
    :cond_db
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 223
    move-result p2

    .line 224
    sub-int/2addr p4, p2

    .line 225
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    .line 228
    move-result p2

    .line 229
    sub-int/2addr p6, p2

    .line 230
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 233
    :goto_e8
    return-void
.end method

.method public layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 9
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v2, v3, :cond_17

    .line 20
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    .line 23
    move-result v1

    .line 24
    :cond_17
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 26
    if-eqz v1, :cond_83

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_4d

    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_29

    .line 34
    const/4 p2, 0x3

    .line 35
    if-eq v1, p2, :cond_83

    .line 37
    const/4 p2, 0x4

    .line 38
    if-eq v1, p2, :cond_83

    .line 40
    goto/16 :goto_a0

    .line 42
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result v1

    .line 52
    sub-int/2addr p2, v1

    .line 53
    invoke-static {v0}, Lm0/i;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, p2

    .line 58
    invoke-static {v0}, Lm0/i;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 61
    move-result p2

    .line 62
    sub-int/2addr v1, p2

    .line 63
    div-int/2addr v1, v2

    .line 64
    if-nez p3, :cond_47

    .line 66
    add-int/2addr p4, v1

    .line 67
    add-int/2addr p6, v1

    .line 68
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 71
    goto :goto_a0

    .line 72
    :cond_47
    sub-int/2addr p4, v1

    .line 73
    sub-int/2addr p6, v1

    .line 74
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 77
    goto :goto_a0

    .line 78
    :cond_4d
    if-nez p3, :cond_69

    .line 80
    add-int/2addr p4, p2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    move-result p3

    .line 85
    sub-int/2addr p4, p3

    .line 86
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 89
    move-result p3

    .line 90
    sub-int/2addr p4, p3

    .line 91
    add-int/2addr p6, p2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 95
    move-result p2

    .line 96
    sub-int/2addr p6, p2

    .line 97
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 100
    move-result p2

    .line 101
    sub-int/2addr p6, p2

    .line 102
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 105
    goto :goto_a0

    .line 106
    :cond_69
    sub-int/2addr p4, p2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    move-result p3

    .line 111
    add-int/2addr p3, p4

    .line 112
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 115
    move-result p4

    .line 116
    add-int/2addr p3, p4

    .line 117
    sub-int/2addr p6, p2

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 121
    move-result p2

    .line 122
    add-int/2addr p2, p6

    .line 123
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 126
    move-result p4

    .line 127
    add-int/2addr p2, p4

    .line 128
    invoke-virtual {p1, p3, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    .line 131
    goto :goto_a0

    .line 132
    :cond_83
    if-nez p3, :cond_93

    .line 134
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 137
    move-result p2

    .line 138
    add-int/2addr p4, p2

    .line 139
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    .line 142
    move-result p2

    .line 143
    add-int/2addr p6, p2

    .line 144
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 147
    goto :goto_a0

    .line 148
    :cond_93
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 151
    move-result p2

    .line 152
    sub-int/2addr p4, p2

    .line 153
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    .line 156
    move-result p2

    .line 157
    sub-int/2addr p6, p2

    .line 158
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 161
    :goto_a0
    return-void
.end method

.method public makeCombinedLong(II)J
    .registers 7

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public stretchViews()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    return-void
.end method

.method public stretchViews(I)V
    .registers 16

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    return-void

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    const-string v2, "Invalid flex direction: "

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_91

    .line 5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_22

    .line 6
    aget p1, v1, p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 7
    :goto_23
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_2d
    if-ge p1, v5, :cond_ec

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    .line 10
    iget v7, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v8, 0x0

    :goto_38
    if-ge v8, v7, :cond_8e

    .line 11
    iget v9, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v9, v8

    .line 12
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v10

    if-lt v8, v10, :cond_46

    goto :goto_8b

    .line 13
    :cond_46
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10, v9}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8b

    .line 14
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_57

    goto :goto_8b

    .line 15
    :cond_57
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 16
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6b

    .line 17
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v11

    if-eq v11, v3, :cond_6b

    goto :goto_8b

    :cond_6b
    if-eqz v0, :cond_86

    if-eq v0, v4, :cond_86

    const/4 v11, 0x2

    if-eq v0, v11, :cond_80

    const/4 v11, 0x3

    if-ne v0, v11, :cond_76

    goto :goto_80

    .line 18
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    invoke-static {v2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_80
    :goto_80
    iget v11, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_8b

    .line 22
    :cond_86
    iget v11, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_8b
    :goto_8b
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_8e
    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 23
    :cond_91
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 24
    iget-object v3, v1, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 25
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v0, :cond_e2

    if-eq v0, v4, :cond_e2

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v0, v7, :cond_d8

    if-ne v0, v8, :cond_ce

    goto :goto_d8

    .line 26
    :cond_ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    invoke-static {v2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_d8
    :goto_d8
    iget v7, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v6, v7, v5}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_ad

    .line 30
    :cond_e2
    iget v7, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v6, v7, v5}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_ad

    :cond_ec
    return-void
.end method
