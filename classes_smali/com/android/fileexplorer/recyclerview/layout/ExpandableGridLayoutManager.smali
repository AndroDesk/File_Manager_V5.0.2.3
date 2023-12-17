.class public Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "ExpandableGridLayoutManager.java"


# static fields
.field private static final MODE_GRID:I = 0x1

.field private static final MODE_LIST:I = 0x0

.field private static final SPAN_COUNT:I = 0x3


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

.field private mChildHeight:I

.field private mDividerSpace:I

.field private mDy:I

.field private mGroupHeight:I

.field private mHeadChildSpace:Landroid/graphics/Rect;

.field private mLastOffset:I

.field private mMiddleChildSpace:Landroid/graphics/Rect;

.field private mMode:I

.field private mOnlyOneSpace:Landroid/graphics/Rect;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollRange:I

.field private mTailChildSpace:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 6
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V
    .registers 4

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDy:I

    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    .line 3
    return p1
.end method

.method private calculateGridModeConsumed(Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_89

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_b

    .line 10
    goto/16 :goto_89

    .line 12
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    move v2, v0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eqz v5, :cond_50

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 32
    iget-object v7, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 34
    invoke-virtual {v7, v5}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_12

    .line 40
    invoke-virtual {v5}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 43
    move-result v5

    .line 44
    int-to-double v7, v5

    .line 45
    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    .line 47
    mul-double/2addr v7, v9

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 51
    move-result v5

    .line 52
    int-to-double v9, v5

    .line 53
    div-double/2addr v7, v9

    .line 54
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 57
    move-result-wide v7

    .line 58
    double-to-int v5, v7

    .line 59
    if-ne v5, v6, :cond_3f

    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 63
    goto :goto_12

    .line 64
    :cond_3f
    const/4 v6, 0x2

    .line 65
    if-ne v5, v6, :cond_47

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_12

    .line 72
    :cond_47
    add-int/lit8 v0, v0, 0x1

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 76
    add-int/lit8 v5, v5, -0x2

    .line 78
    add-int/2addr v5, v3

    .line 79
    move v3, v5

    .line 80
    goto :goto_12

    .line 81
    :cond_50
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    .line 83
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 86
    move-result v1

    .line 87
    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 89
    add-int/2addr v1, v5

    .line 90
    mul-int/2addr v1, v0

    .line 91
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mTailChildSpace:Landroid/graphics/Rect;

    .line 93
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 96
    move-result v0

    .line 97
    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 99
    add-int/2addr v0, v5

    .line 100
    mul-int/2addr v0, v2

    .line 101
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    .line 103
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 106
    move-result v2

    .line 107
    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 109
    add-int/2addr v2, v5

    .line 110
    mul-int/2addr v2, v3

    .line 111
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mOnlyOneSpace:Landroid/graphics/Rect;

    .line 113
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 116
    move-result v3

    .line 117
    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 119
    add-int/2addr v3, v5

    .line 120
    mul-int/2addr v3, v4

    .line 121
    add-int/2addr v1, v2

    .line 122
    add-int/2addr v1, v0

    .line 123
    add-int/2addr v1, v3

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 127
    move-result p1

    .line 128
    sub-int/2addr p1, v6

    .line 129
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 131
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 133
    add-int/2addr v2, v0

    .line 134
    mul-int/2addr v2, p1

    .line 135
    add-int/2addr v2, v0

    .line 136
    add-int/2addr v2, v1

    .line 137
    return v2

    .line 138
    :cond_89
    :goto_89
    return v0
.end method

.method private calculateListModeConsumed(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3b

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_3b

    .line 11
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_29

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 27
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 29
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_e

    .line 35
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v0

    .line 40
    move v0, v2

    .line 41
    goto :goto_e

    .line 42
    :cond_29
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 44
    mul-int/2addr v0, v1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    move-result p1

    .line 49
    add-int/lit8 p1, p1, -0x1

    .line 51
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 53
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 55
    add-int/2addr v2, v1

    .line 56
    mul-int/2addr v2, p1

    .line 57
    add-int/2addr v2, v1

    .line 58
    add-int/2addr v2, v0

    .line 59
    return v2

    .line 60
    :cond_3b
    :goto_3b
    return v0
.end method

.method private computeListModeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_8a

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_16

    .line 21
    goto/16 :goto_8a

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_21

    .line 33
    return v1

    .line 34
    :cond_21
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 36
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    .line 39
    move-result-object v2

    .line 40
    aget v4, v2, v1

    .line 42
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 52
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_46

    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 64
    if-ne v4, v5, :cond_42

    .line 66
    goto :goto_46

    .line 67
    :cond_42
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_33

    .line 71
    :cond_46
    :goto_46
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateListModeConsumed(Ljava/util/List;)I

    .line 74
    move-result p1

    .line 75
    const/4 v0, 0x1

    .line 76
    aget v4, v2, v0

    .line 78
    const/4 v5, -0x1

    .line 79
    if-eq v4, v5, :cond_52

    .line 81
    move v4, v0

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v4, v1

    .line 84
    :goto_53
    if-eqz v4, :cond_72

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 89
    move-result v3

    .line 90
    float-to-int v3, v3

    .line 91
    if-lez v3, :cond_5d

    .line 93
    move v3, v1

    .line 94
    :cond_5d
    aget v0, v2, v0

    .line 96
    iget v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 98
    mul-int/2addr v0, v4

    .line 99
    aget v1, v2, v1

    .line 101
    if-nez v1, :cond_69

    .line 103
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 105
    goto :goto_6e

    .line 106
    :cond_69
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 108
    add-int/2addr p1, v1

    .line 109
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 111
    :goto_6e
    add-int/2addr p1, v1

    .line 112
    add-int/2addr p1, v0

    .line 113
    sub-int/2addr p1, v3

    .line 114
    goto :goto_89

    .line 115
    :cond_72
    aget v0, v2, v1

    .line 117
    if-nez v0, :cond_7c

    .line 119
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 122
    move-result v0

    .line 123
    float-to-int v0, v0

    .line 124
    goto :goto_84

    .line 125
    :cond_7c
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 128
    move-result v0

    .line 129
    float-to-int v0, v0

    .line 130
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 132
    sub-int/2addr v0, v2

    .line 133
    :goto_84
    if-lez v0, :cond_87

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move v1, v0

    .line 137
    :goto_88
    sub-int/2addr p1, v1

    .line 138
    :goto_89
    return p1

    .line 139
    :cond_8a
    :goto_8a
    return v1
.end method

.method private computeListModeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateListModeConsumed(Ljava/util/List;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private getDecoratedHeight(Landroid/graphics/Rect;)I
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    add-int/2addr v0, p1

    .line 10
    return v0
.end method

.method private initChildHeight(Landroid/view/View;)V
    .registers 7

    .line 1
    const v0, 0x7f0a0186

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 10
    if-eqz v0, :cond_51

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    int-to-float v3, v1

    .line 22
    div-float/2addr v3, v2

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 26
    move-result v2

    .line 27
    instance-of v3, p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_3e

    .line 32
    const v3, 0x7f0a018b

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/widget/TextView;

    .line 41
    if-eqz v3, :cond_51

    .line 43
    if-ne v2, v4, :cond_31

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 48
    move-result p1

    .line 49
    goto :goto_3b

    .line 50
    :cond_31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 53
    move-result p1

    .line 54
    sub-int/2addr p1, v1

    .line 55
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    .line 58
    move-result v0

    .line 59
    add-int/2addr p1, v0

    .line 60
    :goto_3b
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 62
    return-void

    .line 63
    :cond_3e
    instance-of v1, p1, Lcom/android/fileexplorer/view/ListItemView;

    .line 65
    if-eqz v1, :cond_51

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 70
    move-result p1

    .line 71
    if-ne v2, v4, :cond_49

    .line 73
    goto :goto_4e

    .line 74
    :cond_49
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    .line 77
    move-result v0

    .line 78
    sub-int/2addr p1, v0

    .line 79
    :goto_4e
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 81
    return-void

    .line 82
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 88
    return-void
.end method

.method private registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 9
    return-void
.end method


# virtual methods
.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 11

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->computeListModeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_10a

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1f

    .line 30
    goto/16 :goto_10a

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_48

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v0, "computeVerticalScrollOffset: "

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, " "

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    const-string v0, "main1"

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v1

    .line 73
    :cond_48
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 75
    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    .line 78
    move-result-object v2

    .line 79
    aget v4, v2, v1

    .line 81
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object p1

    .line 91
    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_6d

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 103
    if-ne v4, v5, :cond_69

    .line 105
    goto :goto_6d

    .line 106
    :cond_69
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_5a

    .line 110
    :cond_6d
    :goto_6d
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateGridModeConsumed(Ljava/util/List;)I

    .line 113
    move-result p1

    .line 114
    const/4 v0, 0x1

    .line 115
    aget v4, v2, v0

    .line 117
    const/4 v5, -0x1

    .line 118
    if-eq v4, v5, :cond_79

    .line 120
    move v5, v0

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v5, v1

    .line 123
    :goto_7a
    if-eqz v5, :cond_f2

    .line 125
    add-int/2addr v4, v0

    .line 126
    int-to-double v4, v4

    .line 127
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 129
    mul-double/2addr v4, v6

    .line 130
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 133
    move-result v6

    .line 134
    int-to-double v6, v6

    .line 135
    div-double/2addr v4, v6

    .line 136
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 139
    move-result-wide v4

    .line 140
    double-to-int v4, v4

    .line 141
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    .line 143
    if-eqz v5, :cond_de

    .line 145
    if-ne v4, v0, :cond_9f

    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 150
    move-result v0

    .line 151
    float-to-int v0, v0

    .line 152
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    .line 154
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 156
    sub-int/2addr v0, v3

    .line 157
    move v3, v1

    .line 158
    move v5, v3

    .line 159
    goto :goto_da

    .line 160
    :cond_9f
    const/4 v0, 0x2

    .line 161
    if-ne v4, v0, :cond_b9

    .line 163
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 166
    move-result v0

    .line 167
    iget v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 169
    add-int/2addr v0, v4

    .line 170
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 173
    move-result v3

    .line 174
    float-to-int v3, v3

    .line 175
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    .line 177
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 180
    move-result v4

    .line 181
    sub-int/2addr v3, v4

    .line 182
    move v5, v0

    .line 183
    move v0, v3

    .line 184
    move v3, v1

    .line 185
    goto :goto_da

    .line 186
    :cond_b9
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 189
    move-result v5

    .line 190
    iget v6, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 192
    add-int/2addr v5, v6

    .line 193
    sub-int/2addr v4, v0

    .line 194
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    .line 196
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 199
    move-result v0

    .line 200
    iget v6, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 202
    add-int/2addr v0, v6

    .line 203
    mul-int/2addr v0, v4

    .line 204
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 207
    move-result v3

    .line 208
    float-to-int v3, v3

    .line 209
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    .line 211
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    .line 214
    move-result v4

    .line 215
    sub-int/2addr v3, v4

    .line 216
    move v8, v3

    .line 217
    move v3, v0

    .line 218
    move v0, v8

    .line 219
    :goto_da
    if-lez v0, :cond_e1

    .line 221
    move v0, v1

    .line 222
    goto :goto_e1

    .line 223
    :cond_de
    move v0, v1

    .line 224
    move v3, v0

    .line 225
    move v5, v3

    .line 226
    :cond_e1
    :goto_e1
    aget v1, v2, v1

    .line 228
    if-nez v1, :cond_e8

    .line 230
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 232
    goto :goto_ed

    .line 233
    :cond_e8
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 235
    add-int/2addr p1, v1

    .line 236
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 238
    :goto_ed
    add-int/2addr p1, v1

    .line 239
    add-int/2addr p1, v5

    .line 240
    add-int/2addr p1, v3

    .line 241
    sub-int/2addr p1, v0

    .line 242
    goto :goto_109

    .line 243
    :cond_f2
    aget v0, v2, v1

    .line 245
    if-nez v0, :cond_fc

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 250
    move-result v0

    .line 251
    float-to-int v0, v0

    .line 252
    goto :goto_104

    .line 253
    :cond_fc
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 256
    move-result v0

    .line 257
    float-to-int v0, v0

    .line 258
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 260
    sub-int/2addr v0, v2

    .line 261
    :goto_104
    if-lez v0, :cond_107

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    move v1, v0

    .line 265
    :goto_108
    sub-int/2addr p1, v1

    .line 266
    :goto_109
    return p1

    .line 267
    :cond_10a
    :goto_10a
    return v1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->computeListModeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p1, v0, :cond_f

    .line 15
    return p1

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 18
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateGridModeConsumed(Ljava/util/List;)I

    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    .line 28
    return p1
.end method

.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/16 p1, 0x12c

    return p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 14
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_5
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_59

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;

    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    .line 22
    if-eqz v2, :cond_32

    .line 24
    check-cast v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    .line 26
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getHeadDecoratedSpace()Landroid/graphics/Rect;

    .line 29
    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getMiddleDecoratedSpace()Landroid/graphics/Rect;

    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getTailDecoratedSpace()Landroid/graphics/Rect;

    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mTailChildSpace:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getOnlyOneDecoratedSpace()Landroid/graphics/Rect;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mOnlyOneSpace:Landroid/graphics/Rect;

    .line 50
    goto :goto_41

    .line 51
    :cond_32
    instance-of v2, v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    .line 53
    if-eqz v2, :cond_41

    .line 55
    check-cast v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    .line 57
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->getDividerDecoratedSpace()I

    .line 60
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->getDividerDecoratedSpace()I

    .line 63
    move-result v1

    .line 64
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 66
    :cond_41
    :goto_41
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    .line 68
    if-eqz v1, :cond_56

    .line 70
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mOnlyOneSpace:Landroid/graphics/Rect;

    .line 72
    if-eqz v1, :cond_56

    .line 74
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    .line 76
    if-eqz v1, :cond_56

    .line 78
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    .line 80
    if-eqz v1, :cond_56

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mTailChildSpace:Landroid/graphics/Rect;

    .line 84
    if-eqz v1, :cond_56

    .line 86
    goto :goto_59

    .line 87
    :cond_56
    add-int/lit8 v0, v0, 0x1

    .line 89
    goto :goto_5

    .line 90
    :cond_59
    :goto_59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 93
    move-result v0

    .line 94
    if-ge p1, v0, :cond_85

    .line 96
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    .line 103
    move-result v1

    .line 104
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 106
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_76

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 118
    goto :goto_79

    .line 119
    :cond_76
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->initChildHeight(Landroid/view/View;)V

    .line 122
    :goto_79
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    .line 124
    if-eqz v0, :cond_82

    .line 126
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 128
    if-eqz v0, :cond_82

    .line 130
    goto :goto_85

    .line 131
    :cond_82
    add-int/lit8 p1, p1, 0x1

    .line 133
    goto :goto_59

    .line 134
    :cond_85
    :goto_85
    return-void
.end method

.method public switchToGridMode()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 4
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    .line 15
    return-void
.end method

.method public switchToListMode()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    .line 4
    new-instance v1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;

    .line 6
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    .line 9
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    .line 14
    return-void
.end method
