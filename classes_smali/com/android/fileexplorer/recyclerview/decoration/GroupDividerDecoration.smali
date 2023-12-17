.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "GroupDividerDecoration.java"


# static fields
.field private static final CHILD:I

.field private static final GROUP:I


# instance fields
.field private mDividerHeight:I

.field private mDividerMarginBottom:I

.field private mDividerMarginEnd:I

.field private mDividerMarginStart:I

.field private mDividerMarginTop:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->CHILD:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->GROUP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070237

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    const v1, 0x7f070239

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginStart:I

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginEnd:I

    const v1, 0x7f07023a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginTop:I

    const v1, 0x7f070238

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x7f0f2d15

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getDividerDecoratedSpace()I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginTop:I

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 6

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_8

    return-void

    :cond_8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    const/4 p4, 0x2

    const/4 v0, 0x0

    if-ne p3, p4, :cond_16

    const/4 p3, 0x1

    goto :goto_17

    :cond_16
    move p3, v0

    :goto_17
    if-eqz p3, :cond_26

    if-eqz p2, :cond_26

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginTop:I

    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    add-int/2addr p2, p3

    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    add-int/2addr p2, p3

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_26
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 14

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginBottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginEnd:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_18
    if-ge v9, p3, :cond_4c

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    goto :goto_49

    :cond_26
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    move v4, v8

    :goto_34
    if-eqz v4, :cond_49

    if-eqz v3, :cond_49

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v6, v2, v1

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mDividerMarginStart:I

    int-to-float v3, v2

    iget-object v7, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_49
    :goto_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_4c
    return-void
.end method
