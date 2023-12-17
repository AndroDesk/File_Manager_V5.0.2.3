.class public Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;
.super Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;
.source "BaseSpaceDecoration.java"


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
.method public getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 4

    .line 1
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 3
    rem-int/2addr p3, p1

    .line 4
    return p3
.end method

.method public isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 7
    return p1
.end method

.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 11

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 8
    move-result p2

    .line 9
    int-to-double p2, p2

    .line 10
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 12
    mul-double/2addr p2, v0

    .line 13
    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 15
    int-to-double v2, p4

    .line 16
    div-double/2addr p2, v2

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 20
    move-result-wide p2

    .line 21
    double-to-int p2, p2

    .line 22
    const/4 p3, 0x1

    .line 23
    add-int/2addr p5, p3

    .line 24
    int-to-double p4, p5

    .line 25
    mul-double/2addr p4, v0

    .line 26
    iget p6, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 28
    int-to-double v0, p6

    .line 29
    div-double/2addr p4, v0

    .line 30
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    .line 33
    move-result-wide p4

    .line 34
    double-to-int p4, p4

    .line 35
    if-ne p4, p3, :cond_34

    .line 37
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mHeadMarginTop:I

    .line 39
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 41
    if-ne p4, p2, :cond_2f

    .line 43
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mTailMarginBottom:I

    .line 45
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 47
    goto :goto_47

    .line 48
    :cond_2f
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginBottom:I

    .line 50
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    goto :goto_47

    .line 53
    :cond_34
    if-ne p4, p2, :cond_3f

    .line 55
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginTop:I

    .line 57
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 59
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mTailMarginBottom:I

    .line 61
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    goto :goto_47

    .line 64
    :cond_3f
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginTop:I

    .line 66
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 68
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginBottom:I

    .line 70
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    :goto_47
    return-void
.end method

.method public setMargin(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mHeadMarginTop:I

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginTop:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginBottom:I

    .line 7
    iput p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mTailMarginBottom:I

    .line 9
    return-void
.end method
