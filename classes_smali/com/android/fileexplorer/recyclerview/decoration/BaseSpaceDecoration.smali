.class public Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;
.super Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;
.source "BaseSpaceDecoration.java"


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
.method public getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 4

    iget p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    rem-int/2addr p3, p1

    return p3
.end method

.method public isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    return p1
.end method

.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 11

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    mul-double/2addr p2, v0

    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    int-to-double v2, p4

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    const/4 p3, 0x1

    add-int/2addr p5, p3

    int-to-double p4, p5

    mul-double/2addr p4, v0

    iget p6, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    int-to-double v0, p6

    div-double/2addr p4, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p4, p4

    if-ne p4, p3, :cond_34

    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mHeadMarginTop:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    if-ne p4, p2, :cond_2f

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mTailMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_47

    :cond_2f
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_47

    :cond_34
    if-ne p4, p2, :cond_3f

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mTailMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_47

    :cond_3f
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_47
    return-void
.end method

.method public setMargin(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mHeadMarginTop:I

    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginTop:I

    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mMarginBottom:I

    iput p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->mTailMarginBottom:I

    return-void
.end method
