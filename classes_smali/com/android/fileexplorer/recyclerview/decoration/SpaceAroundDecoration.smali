.class public abstract Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SpaceAroundDecoration.java"


# instance fields
.field private mAvgUsedWidth:I

.field public mEndInset:[I

.field private mMarginMiddle:I

.field private mMarginSide:I

.field public mSpanCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    div-int/2addr p1, p3

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    return-void
.end method

.method public static getDesirdWidth(IIII)I
    .registers 5

    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    div-int/2addr p1, p3

    sub-int/2addr p0, p1

    div-int/2addr p0, p3

    return p0
.end method


# virtual methods
.method public changeSpanCount(I)V
    .registers 4

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    return-void
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 12

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_15

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Landroid/graphics/Rect;

    if-eqz p3, :cond_14

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_14
    return-void

    :cond_15
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v0

    invoke-virtual {p0, p2, p3, v5}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v6

    if-nez v6, :cond_44

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    aput v1, v0, v6

    goto :goto_6b

    :cond_36
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    aput v1, v0, v6

    goto :goto_6b

    :cond_44
    if-eqz v0, :cond_59

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    add-int/lit8 v2, v6, -0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    aput v2, v1, v6

    goto :goto_6b

    :cond_59
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    add-int/lit8 v2, v6, -0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    aput v2, v1, v6

    :goto_6b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I
.end method

.method public abstract isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z
.end method

.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 7

    return-void
.end method
