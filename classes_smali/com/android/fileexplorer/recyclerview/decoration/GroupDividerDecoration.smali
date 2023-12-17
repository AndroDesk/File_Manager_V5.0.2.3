.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "GroupDividerDecoration.java"


# static fields
.field private static final CHILD:I = 0x1

.field private static final GROUP:I = 0x2


# instance fields
.field private mDividerHeight:I

.field private mDividerMarginBottom:I

.field private mDividerMarginEnd:I

.field private mDividerMarginStart:I

.field private mDividerMarginTop:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 15
    const v1, 0x7f070237

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    .line 24
    const v1, 0x7f070239

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginStart:I

    .line 33
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginEnd:I

    .line 35
    const v1, 0x7f07023a

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginTop:I

    .line 44
    const v1, 0x7f070238

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    .line 53
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    const v1, 0x7f060083

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    move-result p1

    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    .line 70
    int-to-float p1, p1

    .line 71
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    return-void
.end method


# virtual methods
.method public getDividerDecoratedSpace()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginTop:I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    .line 8
    add-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 6

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p2

    .line 5
    const/4 p4, -0x1

    .line 6
    if-ne p2, p4, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 16
    move-result p3

    .line 17
    const/4 p4, 0x2

    .line 18
    const/4 v0, 0x0

    .line 19
    if-ne p3, p4, :cond_16

    .line 21
    const/4 p3, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p3, v0

    .line 24
    :goto_17
    if-eqz p3, :cond_26

    .line 26
    if-eqz p2, :cond_26

    .line 28
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginTop:I

    .line 30
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    .line 32
    add-int/2addr p2, p3

    .line 33
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    .line 35
    add-int/2addr p2, p3

    .line 36
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    :cond_26
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 14

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p3

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    .line 10
    int-to-float v1, v1

    .line 11
    const/high16 v2, 0x40000000  # 2.0f

    .line 13
    div-float/2addr v1, v2

    .line 14
    add-float/2addr v1, v0

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v0

    .line 19
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginEnd:I

    .line 21
    sub-int/2addr v0, v2

    .line 22
    int-to-float v0, v0

    .line 23
    const/4 v8, 0x0

    .line 24
    move v9, v8

    .line 25
    :goto_18
    if-ge v9, p3, :cond_4c

    .line 27
    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 34
    move-result v3

    .line 35
    const/4 v4, -0x1

    .line 36
    if-ne v3, v4, :cond_26

    .line 38
    goto :goto_49

    .line 39
    :cond_26
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x2

    .line 48
    if-ne v4, v5, :cond_33

    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v4, v8

    .line 53
    :goto_34
    if-eqz v4, :cond_49

    .line 55
    if-eqz v3, :cond_49

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 60
    move-result v2

    .line 61
    sub-float v6, v2, v1

    .line 63
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginStart:I

    .line 65
    int-to-float v3, v2

    .line 66
    iget-object v7, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mPaint:Landroid/graphics/Paint;

    .line 68
    move-object v2, p1

    .line 69
    move v4, v6

    .line 70
    move v5, v0

    .line 71
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    :cond_49
    :goto_49
    add-int/lit8 v9, v9, 0x1

    .line 76
    goto :goto_18

    .line 77
    :cond_4c
    return-void
.end method
