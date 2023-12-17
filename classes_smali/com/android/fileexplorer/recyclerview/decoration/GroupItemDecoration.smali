.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;
.super Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;
.source "GroupItemDecoration.java"


# instance fields
.field public mHeadMarginTop:I

.field public mMarginBottom:I

.field public mMarginTop:I

.field public mTailMarginBottom:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getHeadDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getMiddleDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getOnlyOneDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    if-eqz p1, :cond_19

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    move-result-object p1

    const/4 p2, 0x1

    aget p1, p1, p2

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    rem-int/2addr p1, p2

    return p1

    :cond_19
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    rem-int/2addr p3, p1

    return p3
.end method

.method public getTailDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    return v0
.end method

.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 11

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of p2, p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    const/4 p4, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    if-eqz p2, :cond_34

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {p2, p5}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object p2

    const/4 p5, 0x0

    aget p5, p3, p5

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p2

    int-to-double p5, p2

    mul-double/2addr p5, v0

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    int-to-double v2, p2

    div-double/2addr p5, v2

    invoke-static {p5, p6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p5

    double-to-int p2, p5

    aget p5, p3, p4

    goto :goto_47

    :cond_34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p2, v0

    iget p6, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    int-to-double v2, p6

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    :goto_47
    add-int/2addr p5, p4

    int-to-double p5, p5

    mul-double/2addr p5, v0

    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    int-to-double v0, p3

    div-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p5

    double-to-int p3, p5

    if-ne p3, p4, :cond_65

    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    if-ne p3, p2, :cond_60

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    :cond_60
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    :cond_65
    if-ne p3, p2, :cond_70

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_78

    :cond_70
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_78
    return-void
.end method

.method public setMargin(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    iput p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    return-void
.end method
