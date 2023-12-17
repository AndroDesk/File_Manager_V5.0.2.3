.class public Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "ExpandableGridLayoutManager.java"


# static fields
.field private static final MODE_GRID:I

.field private static final MODE_LIST:I

.field private static final SPAN_COUNT:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->MODE_GRID:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->MODE_LIST:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->SPAN_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDy:I

    return p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

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

    const/4 v0, 0x0

    if-eqz p1, :cond_89

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_89

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    move v3, v2

    move v4, v3

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    iget-object v7, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v7, v5}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v5}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v5

    int-to-double v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v7, v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    int-to-double v9, v5

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    if-ne v5, v6, :cond_3f

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_3f
    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_47
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, -0x2

    add-int/2addr v5, v3

    move v3, v5

    goto :goto_12

    :cond_50
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v1

    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v1, v5

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mTailChildSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v0

    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v0, v5

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v2

    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v2, v5

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mOnlyOneSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v3

    iget v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v3, v5

    mul-int/2addr v3, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    add-int/2addr v2, v0

    mul-int/2addr v2, p1

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3b

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v2

    add-int/2addr v2, v0

    move v0, v2

    goto :goto_e

    :cond_29
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    mul-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    add-int/2addr v2, v1

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2

    :cond_3b
    :goto_3b
    return v0
.end method

.method private computeListModeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_8a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_8a

    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_21

    return v1

    :cond_21
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    move-result-object v2

    aget v4, v2, v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-ne v4, v5, :cond_42

    goto :goto_46

    :cond_42
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_46
    :goto_46
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateListModeConsumed(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    aget v4, v2, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_52

    move v4, v0

    goto :goto_53

    :cond_52
    move v4, v1

    :goto_53
    if-eqz v4, :cond_72

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    if-lez v3, :cond_5d

    move v3, v1

    :cond_5d
    aget v0, v2, v0

    iget v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    mul-int/2addr v0, v4

    aget v1, v2, v1

    if-nez v1, :cond_69

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    goto :goto_6e

    :cond_69
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    :goto_6e
    add-int/2addr p1, v1

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    goto :goto_89

    :cond_72
    aget v0, v2, v1

    if-nez v0, :cond_7c

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_84

    :cond_7c
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    sub-int/2addr v0, v2

    :goto_84
    if-lez v0, :cond_87

    goto :goto_88

    :cond_87
    move v1, v0

    :goto_88
    sub-int/2addr p1, v1

    :goto_89
    return p1

    :cond_8a
    :goto_8a
    return v1
.end method

.method private computeListModeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateListModeConsumed(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method private getDecoratedHeight(Landroid/graphics/Rect;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    return v0
.end method

.method private initChildHeight(Landroid/view/View;)V
    .registers 7

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    instance-of v3, p1, Lcom/android/fileexplorer/view/GridItemView;

    const/4 v4, 0x1

    if-eqz v3, :cond_46

    const v3, 0x7f032c1d

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_59

    if-ne v2, v4, :cond_39

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result p1

    goto :goto_43

    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    add-int/2addr p1, v0

    :goto_43
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    return-void

    :cond_46
    instance-of v1, p1, Lcom/android/fileexplorer/view/ListItemView;

    if-eqz v1, :cond_59

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-ne v2, v4, :cond_51

    goto :goto_56

    :cond_51
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_56
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    return-void

    :cond_59
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    return-void
.end method

.method private registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 11

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->computeListModeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1

    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_10a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto/16 :goto_10a

    :cond_1f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_48

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "computeVerticalScrollOffset: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "main1"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_48
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    move-result-object v2

    aget v4, v2, v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-ne v4, v5, :cond_69

    goto :goto_6d

    :cond_69
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6d
    :goto_6d
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateGridModeConsumed(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    aget v4, v2, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_79

    move v5, v0

    goto :goto_7a

    :cond_79
    move v5, v1

    :goto_7a
    if-eqz v5, :cond_f2

    add-int/2addr v4, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v4, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    if-eqz v5, :cond_de

    if-ne v4, v0, :cond_9f

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    move v3, v1

    move v5, v3

    goto :goto_da

    :cond_9f
    const/4 v0, 0x2

    if-ne v4, v0, :cond_b9

    invoke-direct {p0, v5}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v0

    iget v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v0, v4

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v0

    move v0, v3

    move v3, v1

    goto :goto_da

    :cond_b9
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v5

    iget v6, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v0

    iget v6, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    add-int/2addr v0, v6

    mul-int/2addr v0, v4

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->getDecoratedHeight(Landroid/graphics/Rect;)I

    move-result v4

    sub-int/2addr v3, v4

    move v8, v3

    move v3, v0

    move v0, v8

    :goto_da
    if-lez v0, :cond_e1

    move v0, v1

    goto :goto_e1

    :cond_de
    move v0, v1

    move v3, v0

    move v5, v3

    :cond_e1
    :goto_e1
    aget v1, v2, v1

    if-nez v1, :cond_e8

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    goto :goto_ed

    :cond_e8
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    :goto_ed
    add-int/2addr p1, v1

    add-int/2addr p1, v5

    add-int/2addr p1, v3

    sub-int/2addr p1, v0

    goto :goto_109

    :cond_f2
    aget v0, v2, v1

    if-nez v0, :cond_fc

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_104

    :cond_fc
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    sub-int/2addr v0, v2

    :goto_104
    if-lez v0, :cond_107

    goto :goto_108

    :cond_107
    move v1, v0

    :goto_108
    sub-int/2addr p1, v1

    :goto_109
    return p1

    :cond_10a
    :goto_10a
    return v1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->computeListModeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1

    :cond_9
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    return p1

    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->calculateGridModeConsumed(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mScrollRange:I

    return p1
.end method

.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    const/16 p1, 0x12c

    return p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_5
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-ge v0, v1, :cond_59

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    instance-of v2, v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    if-eqz v2, :cond_32

    check-cast v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getHeadDecoratedSpace()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getMiddleDecoratedSpace()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getTailDecoratedSpace()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mTailChildSpace:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->getOnlyOneDecoratedSpace()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mOnlyOneSpace:Landroid/graphics/Rect;

    goto :goto_41

    :cond_32
    instance-of v2, v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    if-eqz v2, :cond_41

    check-cast v1, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->getDividerDecoratedSpace()I

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->getDividerDecoratedSpace()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    :cond_41
    :goto_41
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mDividerSpace:I

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mOnlyOneSpace:Landroid/graphics/Rect;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mHeadChildSpace:Landroid/graphics/Rect;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMiddleChildSpace:Landroid/graphics/Rect;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mTailChildSpace:Landroid/graphics/Rect;

    if-eqz v1, :cond_56

    goto :goto_59

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_59
    :goto_59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_85

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    goto :goto_79

    :cond_76
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->initChildHeight(Landroid/view/View;)V

    :goto_79
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mGroupHeight:I

    if-eqz v0, :cond_82

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    if-eqz v0, :cond_82

    goto :goto_85

    :cond_82
    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    :cond_85
    :goto_85
    return-void
.end method

.method public switchToGridMode()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    return-void
.end method

.method public switchToListMode()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mChildHeight:I

    new-instance v1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$2;-><init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->mMode:I

    return-void
.end method
