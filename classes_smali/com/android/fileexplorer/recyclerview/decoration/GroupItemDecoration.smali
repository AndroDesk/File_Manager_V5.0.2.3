.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;
.super Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;
.source "GroupItemDecoration.java"


# instance fields
.field public mHeadMarginTop:I

.field public mMarginBottom:I

.field public mMarginTop:I

.field public mTailMarginBottom:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;-><init>(III)V

    .line 4
    return-void
.end method


# virtual methods
.method public getHeadDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    .line 5
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    return-object v0
.end method

.method public getMiddleDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    .line 5
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    return-object v0
.end method

.method public getOnlyOneDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    .line 5
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    return-object v0
.end method

.method public getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 7
    if-eqz p1, :cond_19

    .line 9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 15
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x1

    .line 20
    aget p1, p1, p2

    .line 22
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 24
    rem-int/2addr p1, p2

    .line 25
    return p1

    .line 26
    :cond_19
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 28
    rem-int/2addr p3, p1

    .line 29
    return p3
.end method

.method public getTailDecoratedSpace()Landroid/graphics/Rect;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    .line 5
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    return-object v0
.end method

.method public isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1d

    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 16
    if-eqz p1, :cond_1c

    .line 18
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :cond_1d
    :goto_1d
    return v0
.end method

.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 11

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p2

    .line 5
    instance-of p2, p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 7
    const/4 p4, 0x1

    .line 8
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 10
    if-eqz p2, :cond_34

    .line 12
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 18
    invoke-virtual {p2, p5}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    .line 25
    move-result-object p2

    .line 26
    const/4 p5, 0x0

    .line 27
    aget p5, p3, p5

    .line 29
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 35
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 38
    move-result p2

    .line 39
    int-to-double p5, p2

    .line 40
    mul-double/2addr p5, v0

    .line 41
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 43
    int-to-double v2, p2

    .line 44
    div-double/2addr p5, v2

    .line 45
    invoke-static {p5, p6}, Ljava/lang/Math;->ceil(D)D

    .line 48
    move-result-wide p5

    .line 49
    double-to-int p2, p5

    .line 50
    aget p5, p3, p4

    .line 52
    goto :goto_47

    .line 53
    :cond_34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 60
    move-result p2

    .line 61
    int-to-double p2, p2

    .line 62
    mul-double/2addr p2, v0

    .line 63
    iget p6, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 65
    int-to-double v2, p6

    .line 66
    div-double/2addr p2, v2

    .line 67
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 70
    move-result-wide p2

    .line 71
    double-to-int p2, p2

    .line 72
    :goto_47
    add-int/2addr p5, p4

    .line 73
    int-to-double p5, p5

    .line 74
    mul-double/2addr p5, v0

    .line 75
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 77
    int-to-double v0, p3

    .line 78
    div-double/2addr p5, v0

    .line 79
    invoke-static {p5, p6}, Ljava/lang/Math;->ceil(D)D

    .line 82
    move-result-wide p5

    .line 83
    double-to-int p3, p5

    .line 84
    if-ne p3, p4, :cond_65

    .line 86
    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    .line 88
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 90
    if-ne p3, p2, :cond_60

    .line 92
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    .line 94
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 96
    goto :goto_78

    .line 97
    :cond_60
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    .line 99
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 101
    goto :goto_78

    .line 102
    :cond_65
    if-ne p3, p2, :cond_70

    .line 104
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    .line 106
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 108
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    .line 110
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 112
    goto :goto_78

    .line 113
    :cond_70
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    .line 115
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 117
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 121
    :goto_78
    return-void
.end method

.method public setMargin(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mHeadMarginTop:I

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginTop:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mMarginBottom:I

    .line 7
    iput p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->mTailMarginBottom:I

    .line 9
    return-void
.end method
