.class public Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;
.super Landroid/widget/FrameLayout;
.source "TabViewContainerView.java"


# static fields
.field private static final MEASURE_MODE_COMPAT:I = 0x0

.field private static final MEASURE_MODE_WIDE:I = 0x1

.field private static final WIDE_LESS_THAN_TWO_ITEM_MIN_DP:I = 0xdc

.field private static final WIDE_MORE_THAN_FOUR_ITEM_MIN_DP:I = 0x96

.field private static final WIDE_THREE_ITEM_MIN_DP:I = 0xb4


# instance fields
.field private mChildrenTotalWidth:I

.field private mDensityDpi:I

.field private mGapBetweenTabs:I

.field private mLayoutCenter:Z

.field private mLayoutMode:I

.field private final mOverSizeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmallSizeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaciousLessThanTwoItemMinWidth:I

.field private mSpaciousMoreThanFourItemMinWidth:I

.field private mSpaciousThreeItemMinWidth:I

.field private mVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 6
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->updateLayoutParams()V

    return-void
.end method

.method private isViewGone(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x8

    .line 7
    if-ne p1, v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method private measureByCompatMode(III)V
    .registers 16

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_10
    if-ge v2, v0, :cond_1c

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_10

    .line 29
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, p2

    .line 41
    const/4 p2, 0x1

    .line 42
    if-le p3, p2, :cond_31

    .line 44
    add-int/lit8 p2, p3, -0x1

    .line 46
    iget v3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 48
    mul-int/2addr p2, v3

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move p2, v1

    .line 51
    :goto_32
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 54
    move-result p1

    .line 55
    sub-int v3, p1, v2

    .line 57
    sub-int/2addr v3, p2

    .line 58
    div-int p3, v3, p3

    .line 60
    move v4, v1

    .line 61
    move v5, v4

    .line 62
    move v6, v5

    .line 63
    move v7, v6

    .line 64
    :goto_3f
    const/high16 v8, 0x40000000  # 2.0f

    .line 66
    if-ge v4, v0, :cond_76

    .line 68
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v9, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 75
    invoke-direct {p0, v9}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_73

    .line 81
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    move-result v10

    .line 85
    add-int/2addr v5, v10

    .line 86
    if-le v10, p3, :cond_5e

    .line 88
    iget-object v11, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    .line 90
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/2addr v7, v10

    .line 94
    goto :goto_64

    .line 95
    :cond_5e
    iget-object v11, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    .line 97
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/2addr v6, v10

    .line 101
    :goto_64
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 104
    move-result v10

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 108
    move-result v11

    .line 109
    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 112
    move-result v8

    .line 113
    invoke-virtual {v9, v10, v8}, Landroid/view/View;->measure(II)V

    .line 116
    :cond_73
    add-int/lit8 v4, v4, 0x1

    .line 118
    goto :goto_3f

    .line 119
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result v4

    .line 123
    iget v9, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    .line 125
    mul-int/lit8 v9, v9, 0x2

    .line 127
    add-int/2addr v9, v4

    .line 128
    if-le v5, v3, :cond_87

    .line 130
    add-int/2addr v5, p2

    .line 131
    add-int/2addr v5, v2

    .line 132
    invoke-virtual {p0, v5, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 135
    return-void

    .line 136
    :cond_87
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    .line 138
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_ad

    .line 144
    :goto_8f
    if-ge v1, v0, :cond_e5

    .line 146
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_aa

    .line 156
    invoke-static {p3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 159
    move-result v2

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    move-result v3

    .line 164
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 167
    move-result v3

    .line 168
    invoke-virtual {p2, v2, v3}, Landroid/view/View;->measure(II)V

    .line 171
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    .line 173
    goto :goto_8f

    .line 174
    :cond_ad
    if-lez v6, :cond_e5

    .line 176
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    .line 178
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 181
    move-result p2

    .line 182
    sub-int/2addr v3, v7

    .line 183
    :goto_b6
    if-ge v1, p2, :cond_e5

    .line 185
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    .line 187
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object p3

    .line 191
    check-cast p3, Landroid/view/View;

    .line 193
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 196
    move-result v0

    .line 197
    int-to-float v0, v0

    .line 198
    const/high16 v2, 0x3f800000  # 1.0f

    .line 200
    mul-float/2addr v0, v2

    .line 201
    int-to-float v2, v6

    .line 202
    div-float/2addr v0, v2

    .line 203
    int-to-float v2, v3

    .line 204
    mul-float/2addr v0, v2

    .line 205
    float-to-int v0, v0

    .line 206
    invoke-direct {p0, p3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_e2

    .line 212
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 215
    move-result v0

    .line 216
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 219
    move-result v2

    .line 220
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 223
    move-result v2

    .line 224
    invoke-virtual {p3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 227
    :cond_e2
    add-int/lit8 v1, v1, 0x1

    .line 229
    goto :goto_b6

    .line 230
    :cond_e5
    invoke-virtual {p0, p1, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 233
    return-void
.end method

.method private measureByWideMode(III)Z
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-le p3, v0, :cond_13

    .line 14
    add-int/lit8 v3, p3, -0x1

    .line 16
    iget v4, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 18
    mul-int/2addr v3, v4

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v3, v2

    .line 21
    :goto_14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result v4

    .line 25
    sub-int v1, v4, v1

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v5

    .line 32
    move v6, v2

    .line 33
    move v7, v6

    .line 34
    :goto_21
    const/4 v8, 0x2

    .line 35
    if-ge v6, v5, :cond_47

    .line 37
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    move-result-object v7

    .line 41
    if-gt p3, v8, :cond_32

    .line 43
    iget v8, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    .line 45
    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 48
    iget v7, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    .line 50
    goto :goto_44

    .line 51
    :cond_32
    const/4 v8, 0x3

    .line 52
    if-ne p3, v8, :cond_3d

    .line 54
    iget v8, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    .line 56
    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 59
    iget v7, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    .line 61
    goto :goto_44

    .line 62
    :cond_3d
    iget v8, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    .line 64
    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 67
    iget v7, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    .line 69
    :goto_44
    add-int/lit8 v6, v6, 0x1

    .line 71
    goto :goto_21

    .line 72
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 75
    move p1, v2

    .line 76
    move p2, p1

    .line 77
    :goto_4c
    if-ge p1, v5, :cond_71

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    move-result-object p3

    .line 83
    invoke-direct {p0, p3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_6e

    .line 89
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 92
    move-result v6

    .line 93
    add-int/2addr p2, v6

    .line 94
    const/high16 v9, 0x40000000  # 2.0f

    .line 96
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 99
    move-result v6

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 103
    move-result v10

    .line 104
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    move-result v9

    .line 108
    invoke-virtual {p3, v6, v9}, Landroid/view/View;->measure(II)V

    .line 111
    :cond_6e
    add-int/lit8 p1, p1, 0x1

    .line 113
    goto :goto_4c

    .line 114
    :cond_71
    add-int/2addr v3, p2

    .line 115
    iput v3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 120
    move-result p1

    .line 121
    iget p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    .line 123
    mul-int/2addr p3, v8

    .line 124
    add-int/2addr p3, p1

    .line 125
    invoke-virtual {p0, v4, p3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 128
    sub-int/2addr v1, v7

    .line 129
    if-lt p2, v1, :cond_83

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    move v0, v2

    .line 133
    :goto_84
    return v0
.end method

.method private measureByWrapMode(III)V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-le p3, v0, :cond_9

    .line 5
    sub-int/2addr p3, v0

    .line 6
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 8
    mul-int/2addr p3, v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move p3, v1

    .line 11
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result p1

    .line 18
    move p2, v1

    .line 19
    :goto_12
    if-ge v1, p1, :cond_37

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_34

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    move-result v2

    .line 35
    add-int/2addr p2, v2

    .line 36
    const/high16 v3, 0x40000000  # 2.0f

    .line 38
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result v4

    .line 46
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v3

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 53
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_12

    .line 56
    :cond_37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, p1

    .line 65
    add-int/2addr v0, p2

    .line 66
    add-int/2addr v0, p3

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    move-result p1

    .line 71
    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    .line 73
    mul-int/lit8 p2, p2, 0x2

    .line 75
    add-int/2addr p2, p1

    .line 76
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method private updateLayoutParams()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 9
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_tab_gap:I

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v2

    .line 15
    iput v2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 17
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_vertical_padding:I

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    .line 25
    const/high16 v1, 0x435c0000  # 220.0f

    .line 27
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    .line 33
    const/high16 v1, 0x43340000  # 180.0f

    .line 35
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    .line 41
    const/high16 v1, 0x43160000  # 150.0f

    .line 43
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    .line 49
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 6
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mDensityDpi:I

    .line 8
    if-eq p1, v0, :cond_e

    .line 10
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mDensityDpi:I

    .line 12
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->updateLayoutParams()V

    .line 15
    :cond_e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    .line 1
    sub-int/2addr p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result p1

    .line 6
    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    .line 8
    iget-boolean p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 10
    if-eqz p3, :cond_16

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 15
    move-result p3

    .line 16
    iget p5, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 18
    sub-int/2addr p4, p5

    .line 19
    div-int/lit8 p4, p4, 0x2

    .line 21
    add-int/2addr p4, p3

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 26
    move-result p4

    .line 27
    :goto_1a
    const/4 p3, 0x0

    .line 28
    move v2, p4

    .line 29
    :goto_1c
    if-ge p3, p1, :cond_40

    .line 31
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 38
    move-result p4

    .line 39
    if-nez p4, :cond_3d

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    move-result p4

    .line 45
    add-int/2addr p4, v2

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    move-result p5

    .line 50
    add-int v5, p5, p2

    .line 52
    move-object v0, p0

    .line 53
    move v3, p2

    .line 54
    move v4, p4

    .line 55
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 58
    iget p5, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 60
    add-int v2, p4, p5

    .line 62
    :cond_3d
    add-int/lit8 p3, p3, 0x1

    .line 64
    goto :goto_1c

    .line 65
    :cond_40
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 4
    iput v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v1

    .line 10
    move v2, v0

    .line 11
    move v3, v2

    .line 12
    :goto_b
    if-ge v2, v1, :cond_1c

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 18
    invoke-direct {p0, v4}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_19

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 26
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_b

    .line 29
    :cond_1c
    if-gtz v3, :cond_22

    .line 31
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 34
    return-void

    .line 35
    :cond_22
    iget v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 37
    const/4 v2, 0x2

    .line 38
    if-ne v1, v2, :cond_2b

    .line 40
    invoke-direct {p0, p1, p2, v3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->measureByWrapMode(III)V

    .line 43
    return-void

    .line 44
    :cond_2b
    const/4 v2, 0x1

    .line 45
    if-nez v1, :cond_2f

    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    if-ne v1, v2, :cond_42

    .line 50
    invoke-direct {p0, p1, p2, v3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->measureByWideMode(III)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_38

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v0, v2

    .line 58
    :goto_39
    if-nez v0, :cond_3f

    .line 60
    invoke-direct {p0, p1, p2, v3}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->measureByCompatMode(III)V

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    iput-boolean v2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 66
    :goto_41
    return-void

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    const-string p2, "Unexpected layout mode: "

    .line 71
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object p2

    .line 75
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
.end method

.method public setTabViewLayoutMode(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method
